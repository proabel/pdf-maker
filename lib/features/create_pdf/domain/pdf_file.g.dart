// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PDFFileImpl _$$PDFFileImplFromJson(Map<String, dynamic> json) =>
    _$PDFFileImpl(
      fileName: json['fileName'] as String,
      filePath: json['filePath'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PDFFileImplToJson(_$PDFFileImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'filePath': instance.filePath,
      'createdAt': instance.createdAt.toIso8601String(),
    };
