import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'video_editor_repository.g.dart';

abstract class VideoEditorRepositoryImpl {}

@riverpod
VideoEditorRepository videoEditorRepository(VideoEditorRepositoryRef ref) =>
    VideoEditorRepository();

class VideoEditorRepository implements VideoEditorRepositoryImpl {
  Future<String> concatVideos(List<String> videoPaths) async {
    final File tempListFile = File('${Directory.systemTemp.path}/ffmpeg_concat_list.txt');

    final String fileContent = videoPaths.map((path) => "file '$path'").join('\n');
    await tempListFile.writeAsString(fileContent);

    final String concatCommand = '-y -f concat -safe 0 -i ${tempListFile.path}';


    return concatCommand;
  }

  String addSongToVideoCommand(String songPath) {
    return '-i "$songPath" -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 -shortest';
  }

  String fadeTextVideoCommand(String inputPath, String outputPath) {
    return '-y -i "$inputPath" '
        '-filter_complex '
        '"[0:v]split[base][blur];'
        '[blur]boxblur=10,trim=duration=5,fade=out:st=4:d=1[blurred];'
        '[base]trim=duration=5,fade=in:st=1:d=2[base_fade];'
        '[blurred][base_fade]overlay[blurred_base];'
        '[blurred_base][0:v]concat=n=2:v=1:a=0[final];'
        '[final]drawtext=text=\'Sample Text\':x=(w-text_w)/2:y=(h-text_h)/2:fontsize=64:fontcolor=white[out]" '
        '-map "[out]" -map 0:a -c:a copy -movflags +faststart "$outputPath"';
  }


  String generateOutput(
      String baseCommand, String outputPath) {

    final String command =
        '$baseCommand "$outputPath"';
    return command;
  }
}
