// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  List<PDFFile> get pdfFiles => throw _privateConstructorUsedError;
  List<PDFFile> get filteredPDFFiles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({List<PDFFile> pdfFiles, List<PDFFile> filteredPDFFiles});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfFiles = null,
    Object? filteredPDFFiles = null,
  }) {
    return _then(_value.copyWith(
      pdfFiles: null == pdfFiles
          ? _value.pdfFiles
          : pdfFiles // ignore: cast_nullable_to_non_nullable
              as List<PDFFile>,
      filteredPDFFiles: null == filteredPDFFiles
          ? _value.filteredPDFFiles
          : filteredPDFFiles // ignore: cast_nullable_to_non_nullable
              as List<PDFFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PDFFile> pdfFiles, List<PDFFile> filteredPDFFiles});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfFiles = null,
    Object? filteredPDFFiles = null,
  }) {
    return _then(_$DashboardStateImpl(
      pdfFiles: null == pdfFiles
          ? _value._pdfFiles
          : pdfFiles // ignore: cast_nullable_to_non_nullable
              as List<PDFFile>,
      filteredPDFFiles: null == filteredPDFFiles
          ? _value._filteredPDFFiles
          : filteredPDFFiles // ignore: cast_nullable_to_non_nullable
              as List<PDFFile>,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl(
      {required final List<PDFFile> pdfFiles,
      required final List<PDFFile> filteredPDFFiles})
      : _pdfFiles = pdfFiles,
        _filteredPDFFiles = filteredPDFFiles;

  final List<PDFFile> _pdfFiles;
  @override
  List<PDFFile> get pdfFiles {
    if (_pdfFiles is EqualUnmodifiableListView) return _pdfFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pdfFiles);
  }

  final List<PDFFile> _filteredPDFFiles;
  @override
  List<PDFFile> get filteredPDFFiles {
    if (_filteredPDFFiles is EqualUnmodifiableListView)
      return _filteredPDFFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredPDFFiles);
  }

  @override
  String toString() {
    return 'DashboardState(pdfFiles: $pdfFiles, filteredPDFFiles: $filteredPDFFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            const DeepCollectionEquality().equals(other._pdfFiles, _pdfFiles) &&
            const DeepCollectionEquality()
                .equals(other._filteredPDFFiles, _filteredPDFFiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pdfFiles),
      const DeepCollectionEquality().hash(_filteredPDFFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final List<PDFFile> pdfFiles,
      required final List<PDFFile> filteredPDFFiles}) = _$DashboardStateImpl;

  @override
  List<PDFFile> get pdfFiles;
  @override
  List<PDFFile> get filteredPDFFiles;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
