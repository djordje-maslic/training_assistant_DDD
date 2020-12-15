String dateTimeConverter(int input) {
  final int year = DateTime.fromMillisecondsSinceEpoch(input).year;
  final int month = DateTime.fromMillisecondsSinceEpoch(input).month;
  final int day = DateTime.fromMillisecondsSinceEpoch(input).day;

  switch (month) {
    case 1:
      return '$day.JAN $year';
      break;
    case 2:
      return '$day.FEB $year';
      break;
    case 3:
      return '$day.MAR $year';
      break;
    case 4:
      return '$day.APR $year';
      break;
    case 5:
      return '$day.MAY $year';
      break;
    case 6:
      return '$day.JUN $year';
      break;
    case 7:
      return '$day.JUL $year';
      break;
    case 8:
      return '$day.AUG $year';
      break;
    case 9:
      return '$day.SEP $year';
      break;
    case 10:
      return '$day.OCT $year';
      break;
    case 11:
      return '$day.NOV $year';
      break;
    case 12:
      return '$day.DEC $year';
      break;
  }
return 'date error';
}
