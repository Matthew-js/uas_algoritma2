import 'package:flutter/material.dart';
import 'pages/device_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Router Monitor',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: DevicePage(),
    debugShowCheckedModeBanner: false,
  ));
}
