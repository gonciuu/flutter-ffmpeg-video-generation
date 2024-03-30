// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_editor_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoEditorDataImpl _$$VideoEditorDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoEditorDataImpl(
      outputPath: json['outputPath'] as String?,
      videoPaths: (json['videoPaths'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      videoTexts: (json['videoTexts'] as List<dynamic>)
          .map((e) => VideoTextData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoEditorDataImplToJson(
        _$VideoEditorDataImpl instance) =>
    <String, dynamic>{
      'outputPath': instance.outputPath,
      'videoPaths': instance.videoPaths,
      'videoTexts': instance.videoTexts,
    };

_$VideoTextDataImpl _$$VideoTextDataImplFromJson(Map<String, dynamic> json) =>
    _$VideoTextDataImpl(
      text: json['text'] as String,
      fontSize: json['fontSize'] as int,
      x: json['x'] as int,
      y: json['y'] as int,
      fontColor: json['fontColor'] as String,
    );

Map<String, dynamic> _$$VideoTextDataImplToJson(_$VideoTextDataImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'fontSize': instance.fontSize,
      'x': instance.x,
      'y': instance.y,
      'fontColor': instance.fontColor,
    };
