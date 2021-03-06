import 'package:flutter/material.dart';

String timeConverter(int input) {
 final int hours= input ~/ 3600000;
 final String hoursString= hours < 10 ? '0$hours' : '$hours';

 final int minutes= (input-(hours*3600000))~/60000;
 final String minutesString= minutes < 10 ? '0$minutes' : '$minutes';


 final String result= '$hoursString:$minutesString';


  return result;
}


String timeOfDayFromDateTime(int input){

 final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(input);
 final TimeOfDay timeOfDay=TimeOfDay.fromDateTime(dateTime);
 final String result=timeOfDay.toString().substring(10,15);
 

  return result;
}

