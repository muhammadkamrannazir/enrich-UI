// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:enrich/Screens/Registration.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splashpage extends StatefulWidget {
  const Splashpage({Key? key}) : super(key: key);
  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Registration(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[500],
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 130),
            Padding(
                  padding: const EdgeInsets.only(left: 70,right: 70 ),
              child: Image(
                image: AssetImage('assets/splash.png'),
              ),
            ),
            Spacer(),
            Stack(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 4),
                  child: Container(
                    height: 51,
                    width: 51,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.amber),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 11),
                  child: Container(
                    height: 51,
                    width: 51,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 7),
                  child: Container(
                    height: 51,
                    width: 51,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 9),
                  child: Container(
                    height: 51,
                    width: 51,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 22),
                  child: Text(
                    'en-rich',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 35),
                  child: Text(
                    'year life',
                    style: TextStyle(
                      fontSize: 7,
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Loading...',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
