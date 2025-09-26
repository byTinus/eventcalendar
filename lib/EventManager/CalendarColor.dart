// ignore_for_file: file_names

import 'package:flutter/material.dart';

enum CalendarColor { 
  red(color: Colors.red), 
  orange(color: Colors.orange), 
  yellow(color: Colors.amberAccent), 
  green(color: Colors.lightGreen), 
  blue(color: Colors.indigoAccent), 
  purple(color: Colors.deepPurpleAccent), 
  magenta(color: Colors.purpleAccent), 
  cyan(color: Colors.cyanAccent), 
  black(color: Color.fromARGB(255, 29, 29, 29)), 
  white(color: Colors.white);

  const CalendarColor({required this.color});
  final Color color;
}