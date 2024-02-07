import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pdf_maker/features/core/infrastructure/hive_db.dart';
import 'package:pdf_maker/features/create_pdf/domain/pdf_file.dart';

class PDFFileRepository {
  final HiveDB _hiveDB;
  PDFFileRepository(this._hiveDB);

  Future<Either<Exception, Unit>> addPDFFile({required PDFFile pdfFile}) async {
    try {
      await _hiveDB.pdfFilesBox.put(pdfFile.fileName, pdfFile);
      return right(unit);
    } on HiveError catch (e) {
      print(e);
      return left(Exception(e.message));
    }
  }

  Future<Either<Exception, List<PDFFile>>> getPDFFiles() async {
    try {
      final Box pdfFilesBox = _hiveDB.pdfFilesBox;
      
      List<PDFFile> pdfFiles = pdfFilesBox.values.toList().cast<PDFFile>();
    
    return  right(pdfFiles);
    } on HiveError catch (e) {
      print(e);
      return left(Exception(e.message));
    }
  }
}
