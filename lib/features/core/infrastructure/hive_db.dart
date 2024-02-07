import 'package:hive_flutter/hive_flutter.dart';
import 'package:pdf_maker/features/create_pdf/domain/pdf_file.dart';

const String pdfFilesBoxName = 'pdfFilesBox';
class HiveDB {
  Box get pdfFilesBox => Hive.box(pdfFilesBoxName);

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(PDFFileAdapter());
    await Hive.openBox(pdfFilesBoxName);
  }
}