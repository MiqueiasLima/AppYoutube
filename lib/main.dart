
import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

void main(){
  runApp(DevicePreview(builder: (_) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Aplication",
    home: Home(),
  )));
}