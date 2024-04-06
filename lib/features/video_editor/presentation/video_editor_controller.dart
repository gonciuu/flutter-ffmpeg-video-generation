import 'package:ffmpeg_video_effects/features/video_editor/domain/video_editor_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/video_editor_repository.dart';

part 'video_editor_controller.g.dart';

@riverpod
class VideoEditorController extends _$VideoEditorController {
  @override
  VideoEditorData build() {
    return VideoEditorData.empty();
  }

  void setPaths(List<String> paths) {
    state = state.copyWith(videoPaths: paths);
  }

  void addText(VideoTextData textData) {
    state = state.copyWith(videoTexts: [...state.videoTexts, textData]);
  }

  void setSongPath(String path) {
    state = state.copyWith(songPath: path);
  }

  String addSongToVideoCommand() {
    if(state.songPath == null) return '';
    return ref
        .read(videoEditorRepositoryProvider)
        .addSongToVideoCommand(state.songPath!);
  }

  Future<String> concatVideos() async{
    return await ref
        .read(videoEditorRepositoryProvider)
        .concatVideos(state.videoPaths);
  }


  String fadeTextVideoCommand(String inputPath, String outputPath) {
    return ref
        .read(videoEditorRepositoryProvider)
        .fadeTextVideoCommand(inputPath, outputPath);
  }

  String wrapCommand(String baseCommand, String outputPath) {

    return ref.read(videoEditorRepositoryProvider).generateOutput(
      baseCommand,
      outputPath,
    );
  }
}
