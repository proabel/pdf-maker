import 'package:logger/logger.dart';

class Logg {
  static final Logger _logger = Logger();

  static void d(String message) {
    _logger.d(message);
  }

  static void e(String message) {
    _logger.e(message);
  }

  static void i(String message) {
    _logger.i(message);
  }

  static void w(String message) {
    _logger.w(message);
  }
}
