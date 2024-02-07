import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

const String pdfTempDir = 'tempPdfImages';
const String pdfGenDir = 'tempPdfGen';
const int outputMemorySize = 1000000; // 1MB

class FileRepository {
  Future<String> get localStoragePath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory!.path;
  }

  Future<String> getLocalFilePath(String fileName) async {
    final String localPath = path.join(await localStoragePath, fileName);
    return localPath;
  }

  Future<Either<Exception, String>> writeToFile({required String fileName, required Uint8List bytes}) async {
    try {
      final String filePath = await getLocalFilePath(fileName);
      final File localFile = File(filePath);
      await localFile.writeAsBytes(bytes);
      return right(filePath);
    } catch (e) {
      return left(e as Exception);
    }
  }

  Future<Either<Exception, Unit>> deleteFile({required String fileName}) async {
    try {
      final File localFile = File(await getLocalFilePath(fileName));
      await localFile.delete();
      return right(unit);
    } catch (e) {
      return left(e as Exception);
    }
  }

  Future<Either<Exception, String>> putFileInTempDir(Uint8List bytes, String fileName) async {
    try {
      final String tempPath = path.join(await localStoragePath, pdfTempDir);
      final Directory directory = Directory(tempPath);
      if (directory.existsSync() == false) {
        await directory.create(recursive: true);
      }
      //final String filename = DateTime.now().millisecondsSinceEpoch.toString();
      final String filePath = path.join(tempPath, fileName);
      final File file = File(filePath);
      await file.writeAsBytes(bytes);
      return right(filePath);
    } catch (e) {
      return left(Exception(e));
    }
  }

  Future<Either<Exception, String>> createPDFFromTempDir(
      {required List<String> filePaths, required String fileName,}) async {
    try {
      final List<File> files = filePaths.map((e) => File(e)).toList();
      final pdf = pw.Document();
      for (var file in files) {
        //filePaths.add(file.path);
        final image = pw.MemoryImage(file.readAsBytesSync());
        pdf.addPage(pw.Page(
          build: (pw.Context context) {
            return pw.Center(
              child: pw.Image(image),
            ); // Center
          },
        ));
      }
      final String tempGenPath = path.join(await localStoragePath, pdfGenDir);
      final Directory output = Directory(tempGenPath);
      if (output.existsSync() == false) {
        //create the directory
        await output.create(recursive: true);
      }
      //final pdfFile = File("${output.path}/output.pdf");
      final pdfBytes = await pdf.save();
      return writeToFile(fileName: fileName, bytes: pdfBytes);

      // await pdfFile.writeAsBytes(await pdf.save());
    } catch (e) {
      return left(Exception(e));
    }
  }

  Future<Either<Exception, Unit>> clearTempDir() async {
    try {
      final String tempPath = path.join(await localStoragePath, pdfTempDir);
      final Directory directory = Directory(tempPath);
      if (directory.existsSync() == false) {
        return right(unit);
      }
      final List<FileSystemEntity> files = directory.listSync();
      for (var file in files) {
        await file.delete();
      }
      final String tempPath2 = path.join(await localStoragePath, pdfGenDir);
      final Directory directory2 = Directory(tempPath);
      if (directory.existsSync() == false) {
        return right(unit);
      }
      final List<FileSystemEntity> files2 = directory.listSync();
      for (var file in files) {
        await file.delete();
      }
      return right(unit);
    } catch (e) {
      return left(Exception(e));
    }
  }

    Future<Uint8List> compressImage(Uint8List bytes) async {
    try {
      int currentMemorySize = bytes.length;
      Uint8List? outputBytes = bytes;

      int quality = 60;
      while (currentMemorySize > outputMemorySize) {
        // Adjust the quality to control the compression level

        // Compress the image with the given quality
        outputBytes = await FlutterImageCompress.compressWithList(
          outputBytes!,
          quality: quality,
        );

        // Update the current memory size
        currentMemorySize = outputBytes.length;
      }
      return outputBytes!;
    } catch (e) {
      throw Exception('Image compression failed');
      // return [];
    }
  }
}
