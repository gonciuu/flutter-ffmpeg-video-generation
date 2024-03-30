import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'video_editor_repository.g.dart';

abstract class VideoEditorRepositoryImpl {}

@riverpod
VideoEditorRepository videoEditorRepository(VideoEditorRepositoryRef ref) =>
    VideoEditorRepository();

class VideoEditorRepository implements VideoEditorRepositoryImpl {

  Future<String> concatVideos(List<String> videoPaths, String outputPath) async {
    debugPrint(Directory.systemTemp.path);
    final File tempListFile = File('${Directory.systemTemp.path}/ffmpeg_concat_list.txt');

    final String fileContent = videoPaths.map((path) => "file '$path'").join('\n');
    await tempListFile.writeAsString(fileContent);

    final String concatCommand = '-f concat -safe 0 -y -i "${tempListFile.path}" -c copy "$outputPath"';

    debugPrint(concatCommand);

    return concatCommand;
  }

}
