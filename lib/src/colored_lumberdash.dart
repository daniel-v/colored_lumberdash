import 'package:ansicolor/ansicolor.dart';
import 'package:lumberdash/lumberdash.dart';

/// [LumberdashClient] that colors your logs in the stdout depending
/// on their severity level
class ColoredLumberdash extends LumberdashClient {
  final _warning = AnsiPen()..yellow();
  final _fatal = AnsiPen()..xterm(255)..xterm(52, bg: true);
  final _error = AnsiPen()..red();

  /// Prints a regular message to stdout without any color treatment
  @override
  void logMessage(String message, [Map<String, dynamic> extras]) {
    print('Message { message: $message, extras: $extras }'); // no color added
  }

  /// Prints the given message in yellow
  @override
  void logWarning(String message, [Map<String, dynamic> extras]) {
    final warning = _warning('Warning { message: $message, extras: $extras }');
    print(warning);
  }

  /// Prints the given message in red
  @override
  void logFatal(String message, [Map<String, dynamic> extras]) {
    final fatal = _fatal('Fatal { message: $message, extras: $extras }');
    print(fatal);
  }

  /// Prints the given message in a red background with white
  /// characters
  @override
  void logError(dynamic exception, [dynamic stacktrace]) {
    final error = _error('Error { exception: $exception, stacktrace: $stacktrace }');
    print(error);
  }
}
