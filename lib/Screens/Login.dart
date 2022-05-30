// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Dashboard.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 140, 30, 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 385, right: 8),
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 155, top: 85),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.amber),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100.0),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 150, top: 93),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 144, top: 88),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 158, top: 92),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 170, top: 120),
                  child: Text(
                    'en-rich',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200, top: 140),
                  child: Text(
                    'year life',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 195, 50, 50),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'En-rich Associate',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(height: 60),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android_rounded),
                        hintText: 'Associate ID / Mobile No'),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    ),
                    obscureText: true,
                    obscuringCharacter: '*',
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: null),
                          Text('Remember Me'),
                        ],
                      ),
                      Text('Forgot Password ?')
                    ],
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Get.to(BottomBar());
                    },
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text('Login'),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
