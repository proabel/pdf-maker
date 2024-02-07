import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdf_maker/features/core/infrastructure/hive_db.dart';
import 'package:pdf_maker/features/create_pdf/application/create_pdf_notifier.dart';
import 'package:pdf_maker/features/create_pdf/infrastructure/file_repository.dart';
import 'package:pdf_maker/features/create_pdf/infrastructure/pdf_file_repository.dart';
import 'package:pdf_maker/features/dashboard/application/dashboard_notifier.dart';

final hiveDB = Provider((ref) => HiveDB());

final fileRepositoryProvider = Provider((ref) => FileRepository());
final pdfFileRepositoryProvider = Provider((ref) => PDFFileRepository(ref.watch(hiveDB)));

final dashboardNotifierProvider = StateNotifierProvider<DashboardNotifier, DashboardState>(
  (ref) => DashboardNotifier(ref.watch(pdfFileRepositoryProvider)),
);

final createPDFNotifierProvider = StateNotifierProvider<CreatePDFNotifier, CreatePDFState>(
    (ref) => CreatePDFNotifier(ref.watch(fileRepositoryProvider), ref.watch(pdfFileRepositoryProvider)));
