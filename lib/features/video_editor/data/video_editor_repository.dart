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

  String generateOutput(
      String baseCommand, String outputPath) {
    final String command =
        '$baseCommand "$outputPath"';
    return command;
  }
}
