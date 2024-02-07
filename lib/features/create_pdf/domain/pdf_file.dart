import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'pdf_file.freezed.dart';
part 'pdf_file.g.dart';
 
@freezed
class PDFFile with _$PDFFile {
    const factory PDFFile({
        required String fileName,
        required String filePath,
        required DateTime createdAt,
    }) = _PDFFile;
 
    factory PDFFile.fromJson(Map<String, dynamic> json) => _$PDFFileFromJson(json);
}

class PDFFileAdapter extends TypeAdapter<PDFFile> {
  @override
  final int typeId = 0; // Unique identifier for your class

  @override
  PDFFile read(BinaryReader reader) {
    final fileName = reader.read();
    final filePath = reader.read();
    final createdAt = reader.read();
    return PDFFile(
      fileName: fileName,
      filePath: filePath,
      createdAt: createdAt,
    );
  }

  @override
  void write(BinaryWriter writer, PDFFile obj) {
    writer.write(obj.fileName);
    writer.write(obj.filePath);
    writer.write(obj.createdAt);
  }
}