// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PDFFile _$PDFFileFromJson(Map<String, dynamic> json) {
  return _PDFFile.fromJson(json);
}

/// @nodoc
mixin _$PDFFile {
  String get fileName => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PDFFileCopyWith<PDFFile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PDFFileCopyWith<$Res> {
  factory $PDFFileCopyWith(PDFFile value, $Res Function(PDFFile) then) =
      _$PDFFileCopyWithImpl<$Res, PDFFile>;
  @useResult
  $Res call({String fileName, String filePath, DateTime createdAt});
}

/// @nodoc
class _$PDFFileCopyWithImpl<$Res, $Val extends PDFFile>
    implements $PDFFileCopyWith<$Res> {
  _$PDFFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? filePath = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PDFFileImplCopyWith<$Res> implements $PDFFileCopyWith<$Res> {
  factory _$$PDFFileImplCopyWith(
          _$PDFFileImpl value, $Res Function(_$PDFFileImpl) then) =
      __$$PDFFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileName, String filePath, DateTime createdAt});
}

/// @nodoc
class __$$PDFFileImplCopyWithImpl<$Res>
    extends _$PDFFileCopyWithImpl<$Res, _$PDFFileImpl>
    implements _$$PDFFileImplCopyWith<$Res> {
  __$$PDFFileImplCopyWithImpl(
      _$PDFFileImpl _value, $Res Function(_$PDFFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? filePath = null,
    Object? createdAt = null,
  }) {
    return _then(_$PDFFileImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PDFFileImpl implements _PDFFile {
  const _$PDFFileImpl(
      {required this.fileName,
      required this.filePath,
      required this.createdAt});

  factory _$PDFFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PDFFileImplFromJson(json);

  @override
  final String fileName;
  @override
  final String filePath;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PDFFile(fileName: $fileName, filePath: $filePath, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PDFFileImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, filePath, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PDFFileImplCopyWith<_$PDFFileImpl> get copyWith =>
      __$$PDFFileImplCopyWithImpl<_$PDFFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PDFFileImplToJson(
      this,
    );
  }
}

abstract class _PDFFile implements PDFFile {
  const factory _PDFFile(
      {required final String fileName,
      required final String filePath,
      required final DateTime createdAt}) = _$PDFFileImpl;

  factory _PDFFile.fromJson(Map<String, dynamic> json) = _$PDFFileImpl.fromJson;

  @override
  String get fileName;
  @override
  String get filePath;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PDFFileImplCopyWith<_$PDFFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
