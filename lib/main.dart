// ignore_for_file: prefer__ructors, prefer_const_constructors

import 'package:enrich/Screens/Registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/Dashboard.dart';
import 'Screens/Login.dart';
import 'Screens/SplashScreen.dart';

void main() {
  runApp(
    MyApp(
    
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // cardColor: Colors.blueGrey,
        primarySwatch: Colors.blueGrey,
        unselectedWidgetColor: Colors.grey,
        selectedRowColor: Colors.blueGrey,
        iconTheme: IconThemeData(
          color: Colors.grey[300],
        ),
      ),
      home: Splashpage(),
    );
  }
}
