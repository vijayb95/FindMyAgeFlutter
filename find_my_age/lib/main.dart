import 'package:find_my_age/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red, backgroundColor: Colors.white, accentColor: Colors.blue[300])),
      home: HomePage(),
    );
  }
}
