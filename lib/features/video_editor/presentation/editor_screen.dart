import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:ffmpeg_kit_flutter_full_gpl/ffmpeg_kit.dart';
import 'package:ffmpeg_video_effects/features/video_editor/domain/video_editor_data.dart';
import 'package:ffmpeg_video_effects/features/video_editor/presentation/video_editor_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';

class EditorScreen extends HookConsumerWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<VideoPlayerController?> controller = useState(null);
    final ValueNotifier<ChewieController?> chewieController = useState(null);
    final ValueNotifier<bool> isPickingVideo = useState(false);

    final VideoEditorData videoEditorData =
        ref.watch(videoEditorControllerProvider);

    final VideoEditorController videoEditorController =
        ref.read(videoEditorControllerProvider.notifier);

    void initializeVideoPlayer(String videoPath) {
      controller.value = VideoPlayerController.file(File(videoPath))
        ..initialize().then((_) {
          chewieController.value = ChewieController(
            videoPlayerController: controller.value!,
            autoPlay: true,
            looping: false,
          );
        });
    }

    Future<String> getOutputPath() async {
      final directory = await getTemporaryDirectory();
      return '${directory.path}/output_video.mp4';
    }

    Future<void> showVideo(String cmd) async {
      //
      // final fadeEffectCommand = '-y -i "$inputPath" '
      //     '-filter_complex "[0:v]split[base][blur];'
      //     '[blur]boxblur=10,trim=duration=5,fade=out:st=4:d=1[blurred];'
      //     '[base]trim=duration=5,fade=in:st=1:d=2[base_fade];'
      //     '[blurred][base_fade]overlay[blurred_base];'
      //     '[blurred_base][0:v]concat=n=2:v=1:a=0[final];'
      //     '[final]drawtext=text=\'Sample Text\':x=(w-text_w)/2:y=(h-text_h)/2:fontsize=64:fontcolor=white[out]" '
      //     '-map "[out]" -map 0:a -c:a copy -movflags +faststart "$outputPath"';
      //
      // final zoomEffectCommand =
      //     '-y -i "$inputPath" -vf "zoompan=z=\'1+(1.4*in/300)\':x=\'70*in/300\':y=\'190*in/300\':d=1" "$outputPath"';

      final outputPath = await getOutputPath();
      await FFmpegKit.execute(cmd).then((session) async {
        final returnCode = await session.getReturnCode();
        debugPrint(await session.getAllLogsAsString());
        debugPrint('FFmpeg process exited with rc $returnCode');
        if (returnCode?.isValueSuccess() ?? false) {
          initializeVideoPlayer(outputPath);
        }
      });
    }

    Future<void> pickVideoHandler() async {
      isPickingVideo.value = true;
      final result = await FilePicker.platform.pickFiles(
          type: FileType.video, allowMultiple: true, allowCompression: false);

      if (result != null && result.files.isNotEmpty) {
        videoEditorController
            .setPaths(result.files.map((e) => e.path ?? '').toList());
      }
      isPickingVideo.value = false;
    }

    Future<void> addTextHandler() async {
      const textData = VideoTextData(
        text: 'Sample Text',
        fontSize: 64,
        x: 100,
        y: 100,
        fontColor: 'white',
        startTime: 0,
        endTime: 5,
      );
      videoEditorController.addText(textData);
    }

    useEffect(() {
      return () {
        controller.value?.dispose();
        chewieController.value?.dispose();
      };
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Editor'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  child: chewieController.value != null &&
                          chewieController
                              .value!.videoPlayerController.value.isInitialized
                      ? Chewie(
                          controller: chewieController.value!,
                        )
                      : const Center(
                          child: Text("Generate Video to see preview",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
              const Divider(),
              ElevatedButton(
                onPressed: isPickingVideo.value ? null : pickVideoHandler,
                child: isPickingVideo.value
                    ? const CircularProgressIndicator.adaptive()
                    : const Text('Pick Videos'),
              ),
              Container(
                constraints: const BoxConstraints(maxHeight: 200),
                child: Scrollbar(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: videoEditorData.videoPaths.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            "${index + 1}. ${videoEditorData.videoPaths[index].split('/').last}"),
                      );
                    },
                  ),
                ),
              ),
              const Divider(),
              ElevatedButton(
                onPressed: () async {
                  //show file picker
                  final result = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowMultiple: false,
                      allowedExtensions: ['mp3']);

                  if (result != null && result.files.isNotEmpty) {
                    videoEditorController.setSongPath(result.files.first.path!);
                  }
                },
                child: Text(
                    'Pick Song ${videoEditorData.songPath?.split('/').last}'),
              ),
              const Divider(),
              ElevatedButton(
                onPressed: addTextHandler,
                child: const Text('Add Text'),
              ),
              Container(
                constraints: const BoxConstraints(maxHeight: 200),
                child: Scrollbar(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: videoEditorData.videoTexts.length,
                    itemBuilder: (context, index) {
                      final textData = videoEditorData.videoTexts[index];
                      return ListTile(
                        title: Text(
                            "${index + 1}. ${textData.text} ${textData.startTime} - ${textData.endTime}"),
                      );
                    },
                  ),
                ),
              ),
              const Divider(),
              ElevatedButton(
                onPressed: () async {
                  final outputPath = await getOutputPath();

                  String effectsCommand =
                      await videoEditorController.concatVideos();

                  effectsCommand +=
                      " ${videoEditorController.addSongToVideoCommand()}";

                  final String finalCommand = videoEditorController.wrapCommand(
                      effectsCommand, outputPath);


                  final stringlol = videoEditorController.fadeTextVideoCommand(
                      videoEditorData.videoPaths.first, outputPath);

                  debugPrint(finalCommand);
                  showVideo(stringlol);
                },
                child: const Text('Generate Video'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
