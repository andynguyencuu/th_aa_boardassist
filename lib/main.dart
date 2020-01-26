import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:th_aa_boardassist/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarBrightness: Brightness.light,
  ));
  runApp(MyApp());
}