import 'package:intl/intl.dart';

class MathProblems {
  static String findTemp(double tempInKelvin) {
    String temp = (tempInKelvin - 273.15).ceil().toString();
    return '$temp°C';
  }

  static String findPressure(int pressureInHpa) {
    String pressure = (pressureInHpa / 100).floor().toString();
    return pressure;
  }

  static String findWindSpeed(double wind) => wind.toString();
  static String findHumidity(int humididty) => '$humididty%';

  static String getTimeStamp(int shiftedSec) {
    DateTime currentTime = DateTime.now().toUtc();
    DateTime shiftedTimestamp = currentTime.add(Duration(seconds: shiftedSec));
    String formattedTimestamp =
        DateFormat('dd-MM-yyyy').format(shiftedTimestamp);
    return formattedTimestamp;
  }
}
