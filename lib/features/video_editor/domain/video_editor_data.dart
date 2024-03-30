import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_editor_data.freezed.dart';

part 'video_editor_data.g.dart';

@freezed
class VideoEditorData with _$VideoEditorData {
  const factory VideoEditorData({
    String? songPath,
     String? outputPath,
    required List<String> videoPaths,
    required List<VideoTextData> videoTexts,
  }) = _VideoEditorData;

  factory VideoEditorData.fromJson(Map<String, dynamic> json) =>
      _$VideoEditorDataFromJson(json);

  const VideoEditorData._();

  factory VideoEditorData.empty() =>
      const VideoEditorData(videoPaths: [], videoTexts: []);
}

@freezed
class VideoTextData with _$VideoTextData {
  const factory VideoTextData({
    required String text,
    required int fontSize,
    required int x,
    required int y,
    required String fontColor,
  }) = _VideoTextData;

  factory VideoTextData.fromJson(Map<String, dynamic> json) =>
      _$VideoTextDataFromJson(json);
}
