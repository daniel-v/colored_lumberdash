import 'package:lumberdash/lumberdash.dart';
import 'package:colored_lumberdash/colored_lumberdash.dart';

void main() {
  putLumberdashToWork(withClient: ColoredLumberdash());
  
  logMessage('Warning messages show up like so');
  logWarning('Oii, you might want to pay attention to this!');
  logError('Crap... This didn\'t work out');
  logFatal('Right, I\' just gonna stop working here');
}
