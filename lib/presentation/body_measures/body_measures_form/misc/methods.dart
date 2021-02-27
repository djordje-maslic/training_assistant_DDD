import 'package:flutter/material.dart';

InputDecoration inputDecoration(
    {String labelText, String suffixText, Icon prefixIcon}) {
  return  InputDecoration(
      prefixIcon: prefixIcon,
      errorStyle: const TextStyle(fontSize: 20),
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.indigoAccent[100]),
      suffixText: suffixText,
      suffixStyle: TextStyle(color: Colors.indigo[200], fontSize: 20));
}
