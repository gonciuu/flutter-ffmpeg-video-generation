import 'package:ffmpeg_video_effects/features/video_editor/domain/video_editor_data.dart';
import 'package:flutter/cupertino.dart';
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

  Future<String> concatVideos(String outputPath) {
    debugPrint("ESSA");
    return ref
        .read(videoEditorRepositoryProvider)
        .concatVideos(state.videoPaths, outputPath);
  }
}
