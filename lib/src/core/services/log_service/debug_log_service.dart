import 'dart:developer' as developer;

import 'package:logger/logger.dart';
import 'package:wms_v2/src/core/services/log_service/log_service.dart';

class DebugLogService implements LogService {
  final Logger _logger = Logger(
    printer: PrefixPrinter(
      PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 500,
        lineLength: 100,
      ),
    ),
    output: _MyConsoleOutput(),
  );
  // DebugLogService({Logger? logger}) {
  //   _logger = logger ??
  //       Logger(
  //         printer: PrefixPrinter(
  //           PrettyPrinter(
  //             methodCount: 0,
  //             errorMethodCount: 500,
  //             lineLength: 100,
  //           ),
  //         ),
  //         output: MyConsoleOutput(),
  //       );
  // }
  // late final Logger _logger;

  @override
  void e(String message, dynamic e, StackTrace? stack) {
    _logger.e(message, error: e, stackTrace: stack);
  }

  @override
  void i(String message) {
    _logger.i(message);
  }

  @override
  void w(String message, [dynamic e, StackTrace? stack]) {
    _logger.w(message, error: e, stackTrace: stack);
  }
}

class _MyConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(developer.log);
  }
}
