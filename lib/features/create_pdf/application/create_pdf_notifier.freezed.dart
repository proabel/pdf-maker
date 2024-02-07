// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_pdf_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePDFState {
  PDFFile? get pdfFile => throw _privateConstructorUsedError;
  List<String>? get tmpFilePaths => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePDFStateCopyWith<CreatePDFState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePDFStateCopyWith<$Res> {
  factory $CreatePDFStateCopyWith(
          CreatePDFState value, $Res Function(CreatePDFState) then) =
      _$CreatePDFStateCopyWithImpl<$Res, CreatePDFState>;
  @useResult
  $Res call({PDFFile? pdfFile, List<String>? tmpFilePaths});

  $PDFFileCopyWith<$Res>? get pdfFile;
}

/// @nodoc
class _$CreatePDFStateCopyWithImpl<$Res, $Val extends CreatePDFState>
    implements $CreatePDFStateCopyWith<$Res> {
  _$CreatePDFStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfFile = freezed,
    Object? tmpFilePaths = freezed,
  }) {
    return _then(_value.copyWith(
      pdfFile: freezed == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as PDFFile?,
      tmpFilePaths: freezed == tmpFilePaths
          ? _value.tmpFilePaths
          : tmpFilePaths // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PDFFileCopyWith<$Res>? get pdfFile {
    if (_value.pdfFile == null) {
      return null;
    }

    return $PDFFileCopyWith<$Res>(_value.pdfFile!, (value) {
      return _then(_value.copyWith(pdfFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreatePDFStateImplCopyWith<$Res>
    implements $CreatePDFStateCopyWith<$Res> {
  factory _$$CreatePDFStateImplCopyWith(_$CreatePDFStateImpl value,
          $Res Function(_$CreatePDFStateImpl) then) =
      __$$CreatePDFStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PDFFile? pdfFile, List<String>? tmpFilePaths});

  @override
  $PDFFileCopyWith<$Res>? get pdfFile;
}

/// @nodoc
class __$$CreatePDFStateImplCopyWithImpl<$Res>
    extends _$CreatePDFStateCopyWithImpl<$Res, _$CreatePDFStateImpl>
    implements _$$CreatePDFStateImplCopyWith<$Res> {
  __$$CreatePDFStateImplCopyWithImpl(
      _$CreatePDFStateImpl _value, $Res Function(_$CreatePDFStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfFile = freezed,
    Object? tmpFilePaths = freezed,
  }) {
    return _then(_$CreatePDFStateImpl(
      pdfFile: freezed == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as PDFFile?,
      tmpFilePaths: freezed == tmpFilePaths
          ? _value._tmpFilePaths
          : tmpFilePaths // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$CreatePDFStateImpl
    with DiagnosticableTreeMixin
    implements _CreatePDFState {
  const _$CreatePDFStateImpl({this.pdfFile, final List<String>? tmpFilePaths})
      : _tmpFilePaths = tmpFilePaths;

  @override
  final PDFFile? pdfFile;
  final List<String>? _tmpFilePaths;
  @override
  List<String>? get tmpFilePaths {
    final value = _tmpFilePaths;
    if (value == null) return null;
    if (_tmpFilePaths is EqualUnmodifiableListView) return _tmpFilePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePDFState(pdfFile: $pdfFile, tmpFilePaths: $tmpFilePaths)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePDFState'))
      ..add(DiagnosticsProperty('pdfFile', pdfFile))
      ..add(DiagnosticsProperty('tmpFilePaths', tmpFilePaths));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePDFStateImpl &&
            (identical(other.pdfFile, pdfFile) || other.pdfFile == pdfFile) &&
            const DeepCollectionEquality()
                .equals(other._tmpFilePaths, _tmpFilePaths));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pdfFile, const DeepCollectionEquality().hash(_tmpFilePaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePDFStateImplCopyWith<_$CreatePDFStateImpl> get copyWith =>
      __$$CreatePDFStateImplCopyWithImpl<_$CreatePDFStateImpl>(
          this, _$identity);
}

abstract class _CreatePDFState implements CreatePDFState {
  const factory _CreatePDFState(
      {final PDFFile? pdfFile,
      final List<String>? tmpFilePaths}) = _$CreatePDFStateImpl;

  @override
  PDFFile? get pdfFile;
  @override
  List<String>? get tmpFilePaths;
  @override
  @JsonKey(ignore: true)
  _$$CreatePDFStateImplCopyWith<_$CreatePDFStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
