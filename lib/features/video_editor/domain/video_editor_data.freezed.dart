// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_editor_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoEditorData _$VideoEditorDataFromJson(Map<String, dynamic> json) {
  return _VideoEditorData.fromJson(json);
}

/// @nodoc
mixin _$VideoEditorData {
  String? get songPath => throw _privateConstructorUsedError;
  String? get outputPath => throw _privateConstructorUsedError;
  List<String> get videoPaths => throw _privateConstructorUsedError;
  List<VideoTextData> get videoTexts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoEditorDataCopyWith<VideoEditorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEditorDataCopyWith<$Res> {
  factory $VideoEditorDataCopyWith(
          VideoEditorData value, $Res Function(VideoEditorData) then) =
      _$VideoEditorDataCopyWithImpl<$Res, VideoEditorData>;
  @useResult
  $Res call(
      {String? songPath,
      String? outputPath,
      List<String> videoPaths,
      List<VideoTextData> videoTexts});
}

/// @nodoc
class _$VideoEditorDataCopyWithImpl<$Res, $Val extends VideoEditorData>
    implements $VideoEditorDataCopyWith<$Res> {
  _$VideoEditorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songPath = freezed,
    Object? outputPath = freezed,
    Object? videoPaths = null,
    Object? videoTexts = null,
  }) {
    return _then(_value.copyWith(
      songPath: freezed == songPath
          ? _value.songPath
          : songPath // ignore: cast_nullable_to_non_nullable
              as String?,
      outputPath: freezed == outputPath
          ? _value.outputPath
          : outputPath // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPaths: null == videoPaths
          ? _value.videoPaths
          : videoPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoTexts: null == videoTexts
          ? _value.videoTexts
          : videoTexts // ignore: cast_nullable_to_non_nullable
              as List<VideoTextData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoEditorDataImplCopyWith<$Res>
    implements $VideoEditorDataCopyWith<$Res> {
  factory _$$VideoEditorDataImplCopyWith(_$VideoEditorDataImpl value,
          $Res Function(_$VideoEditorDataImpl) then) =
      __$$VideoEditorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? songPath,
      String? outputPath,
      List<String> videoPaths,
      List<VideoTextData> videoTexts});
}

/// @nodoc
class __$$VideoEditorDataImplCopyWithImpl<$Res>
    extends _$VideoEditorDataCopyWithImpl<$Res, _$VideoEditorDataImpl>
    implements _$$VideoEditorDataImplCopyWith<$Res> {
  __$$VideoEditorDataImplCopyWithImpl(
      _$VideoEditorDataImpl _value, $Res Function(_$VideoEditorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songPath = freezed,
    Object? outputPath = freezed,
    Object? videoPaths = null,
    Object? videoTexts = null,
  }) {
    return _then(_$VideoEditorDataImpl(
      songPath: freezed == songPath
          ? _value.songPath
          : songPath // ignore: cast_nullable_to_non_nullable
              as String?,
      outputPath: freezed == outputPath
          ? _value.outputPath
          : outputPath // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPaths: null == videoPaths
          ? _value._videoPaths
          : videoPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoTexts: null == videoTexts
          ? _value._videoTexts
          : videoTexts // ignore: cast_nullable_to_non_nullable
              as List<VideoTextData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoEditorDataImpl extends _VideoEditorData {
  const _$VideoEditorDataImpl(
      {this.songPath,
      this.outputPath,
      required final List<String> videoPaths,
      required final List<VideoTextData> videoTexts})
      : _videoPaths = videoPaths,
        _videoTexts = videoTexts,
        super._();

  factory _$VideoEditorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoEditorDataImplFromJson(json);

  @override
  final String? songPath;
  @override
  final String? outputPath;
  final List<String> _videoPaths;
  @override
  List<String> get videoPaths {
    if (_videoPaths is EqualUnmodifiableListView) return _videoPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoPaths);
  }

  final List<VideoTextData> _videoTexts;
  @override
  List<VideoTextData> get videoTexts {
    if (_videoTexts is EqualUnmodifiableListView) return _videoTexts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoTexts);
  }

  @override
  String toString() {
    return 'VideoEditorData(songPath: $songPath, outputPath: $outputPath, videoPaths: $videoPaths, videoTexts: $videoTexts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoEditorDataImpl &&
            (identical(other.songPath, songPath) ||
                other.songPath == songPath) &&
            (identical(other.outputPath, outputPath) ||
                other.outputPath == outputPath) &&
            const DeepCollectionEquality()
                .equals(other._videoPaths, _videoPaths) &&
            const DeepCollectionEquality()
                .equals(other._videoTexts, _videoTexts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      songPath,
      outputPath,
      const DeepCollectionEquality().hash(_videoPaths),
      const DeepCollectionEquality().hash(_videoTexts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoEditorDataImplCopyWith<_$VideoEditorDataImpl> get copyWith =>
      __$$VideoEditorDataImplCopyWithImpl<_$VideoEditorDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoEditorDataImplToJson(
      this,
    );
  }
}

abstract class _VideoEditorData extends VideoEditorData {
  const factory _VideoEditorData(
      {final String? songPath,
      final String? outputPath,
      required final List<String> videoPaths,
      required final List<VideoTextData> videoTexts}) = _$VideoEditorDataImpl;
  const _VideoEditorData._() : super._();

  factory _VideoEditorData.fromJson(Map<String, dynamic> json) =
      _$VideoEditorDataImpl.fromJson;

  @override
  String? get songPath;
  @override
  String? get outputPath;
  @override
  List<String> get videoPaths;
  @override
  List<VideoTextData> get videoTexts;
  @override
  @JsonKey(ignore: true)
  _$$VideoEditorDataImplCopyWith<_$VideoEditorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoTextData _$VideoTextDataFromJson(Map<String, dynamic> json) {
  return _VideoTextData.fromJson(json);
}

/// @nodoc
mixin _$VideoTextData {
  String get text => throw _privateConstructorUsedError;
  int get fontSize => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  String get fontColor => throw _privateConstructorUsedError;
  double get startTime => throw _privateConstructorUsedError;
  double get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoTextDataCopyWith<VideoTextData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoTextDataCopyWith<$Res> {
  factory $VideoTextDataCopyWith(
          VideoTextData value, $Res Function(VideoTextData) then) =
      _$VideoTextDataCopyWithImpl<$Res, VideoTextData>;
  @useResult
  $Res call(
      {String text,
      int fontSize,
      int x,
      int y,
      String fontColor,
      double startTime,
      double endTime});
}

/// @nodoc
class _$VideoTextDataCopyWithImpl<$Res, $Val extends VideoTextData>
    implements $VideoTextDataCopyWith<$Res> {
  _$VideoTextDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? fontSize = null,
    Object? x = null,
    Object? y = null,
    Object? fontColor = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      fontColor: null == fontColor
          ? _value.fontColor
          : fontColor // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as double,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoTextDataImplCopyWith<$Res>
    implements $VideoTextDataCopyWith<$Res> {
  factory _$$VideoTextDataImplCopyWith(
          _$VideoTextDataImpl value, $Res Function(_$VideoTextDataImpl) then) =
      __$$VideoTextDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      int fontSize,
      int x,
      int y,
      String fontColor,
      double startTime,
      double endTime});
}

/// @nodoc
class __$$VideoTextDataImplCopyWithImpl<$Res>
    extends _$VideoTextDataCopyWithImpl<$Res, _$VideoTextDataImpl>
    implements _$$VideoTextDataImplCopyWith<$Res> {
  __$$VideoTextDataImplCopyWithImpl(
      _$VideoTextDataImpl _value, $Res Function(_$VideoTextDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? fontSize = null,
    Object? x = null,
    Object? y = null,
    Object? fontColor = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$VideoTextDataImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      fontColor: null == fontColor
          ? _value.fontColor
          : fontColor // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as double,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoTextDataImpl implements _VideoTextData {
  const _$VideoTextDataImpl(
      {required this.text,
      required this.fontSize,
      required this.x,
      required this.y,
      required this.fontColor,
      required this.startTime,
      required this.endTime});

  factory _$VideoTextDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoTextDataImplFromJson(json);

  @override
  final String text;
  @override
  final int fontSize;
  @override
  final int x;
  @override
  final int y;
  @override
  final String fontColor;
  @override
  final double startTime;
  @override
  final double endTime;

  @override
  String toString() {
    return 'VideoTextData(text: $text, fontSize: $fontSize, x: $x, y: $y, fontColor: $fontColor, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoTextDataImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.fontColor, fontColor) ||
                other.fontColor == fontColor) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, fontSize, x, y, fontColor, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoTextDataImplCopyWith<_$VideoTextDataImpl> get copyWith =>
      __$$VideoTextDataImplCopyWithImpl<_$VideoTextDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoTextDataImplToJson(
      this,
    );
  }
}

abstract class _VideoTextData implements VideoTextData {
  const factory _VideoTextData(
      {required final String text,
      required final int fontSize,
      required final int x,
      required final int y,
      required final String fontColor,
      required final double startTime,
      required final double endTime}) = _$VideoTextDataImpl;

  factory _VideoTextData.fromJson(Map<String, dynamic> json) =
      _$VideoTextDataImpl.fromJson;

  @override
  String get text;
  @override
  int get fontSize;
  @override
  int get x;
  @override
  int get y;
  @override
  String get fontColor;
  @override
  double get startTime;
  @override
  double get endTime;
  @override
  @JsonKey(ignore: true)
  _$$VideoTextDataImplCopyWith<_$VideoTextDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
