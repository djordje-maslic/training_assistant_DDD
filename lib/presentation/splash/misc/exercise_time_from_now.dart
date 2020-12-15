import 'package:reminder_app/domain/exercise/exercise.dart';

String exerciseTimeFromNow(Exercise exercise) {
  final int exerciseDateInt = exercise.date.getOrCrash();
  final int millisecondsFromNowInt =
  (DateTime.now().millisecondsSinceEpoch - exerciseDateInt).toInt();
  final int years = millisecondsFromNowInt ~/ 31536000000 ?? 0;
  final int month = (millisecondsFromNowInt % (31536000000)) ~/ 2629800000 ?? 0;
  final int days = (millisecondsFromNowInt % (2629800000)) ~/ 86400000 ?? 0;
  final int hour = (millisecondsFromNowInt % (86400000)) ~/ 3600000 ?? 0;
  final int minutes = (millisecondsFromNowInt % (3600000)) ~/ 60000 ?? 0;
  final int seconds = (millisecondsFromNowInt % (60000)) ~/ 1000 ?? 0;

  if (millisecondsFromNowInt > 31536000000) {
    return '$years years ago';
  } else if (millisecondsFromNowInt < 31536000000 &&
      millisecondsFromNowInt > 2629800000) {
    return '$month months ago';
  } else if (millisecondsFromNowInt < 2629800000 &&
      millisecondsFromNowInt > 86400000) {
    return '$days days ago';
  } else if (millisecondsFromNowInt < 86400000 &&
      millisecondsFromNowInt > 3600000) {
    return '$hour hours ago';
  } else if (millisecondsFromNowInt < 3600000 &&
      millisecondsFromNowInt > 60000) {
    return '$minutes minutes ago';
  } else if (millisecondsFromNowInt < 60000 && millisecondsFromNowInt > 1000) {
    return '$seconds seconds ago';
  } else {
    return 'now';
  }
}
