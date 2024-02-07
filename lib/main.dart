import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdf_maker/features/core/infrastructure/hive_db.dart';
import 'package:pdf_maker/features/core/presentation/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveDB.init();
  runApp(ProviderScope(child: AppWidget()));
}
