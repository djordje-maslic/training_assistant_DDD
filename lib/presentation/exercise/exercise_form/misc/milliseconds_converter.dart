
String millisecondsConverter(int input) {
  final int hours = (input / 3600000).floor();
  final String hoursString = hours >9 ? '$hours' : '0$hours';
  final int minutes = ((input % 3600000) / 60000).floor();
  final String minutesString = minutes >9 ? '$minutes' : '0$minutes';

  final int seconds = (((input % 3600000) % 60000) / 1000).floor();
  final String secondsString = seconds >9 ? '$seconds' : '0$seconds';
  final String result = '$hoursString:$minutesString:$secondsString';
  return result;
}
