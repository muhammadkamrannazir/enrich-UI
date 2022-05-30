// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Personal Detail',
      'Account Detail',
      'Upgrade Level',
      'Change Password',
      'KYC Detail',
      'FAQ',
      'Contact Us',
      'Log OUT',
    ];
    // final List<int> colorCodes = <int>[600, 500, 100];
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              Container(
                height: 60,
                width: 8,
                color: Colors.white,
              ),
              SizedBox(width: 30),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Text('en-rich'),
              ),
              Spacer(),
              Text(
                'Profile',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(
            height: 100,
            child: Card(
              margin: EdgeInsets.only(top: 20),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                    Icons.woman,
                    size: 50,
                  ),
                ),
                title: Text(
                  'Sanjana J',
                  style: TextStyle(color: Colors.blueGrey),
                ),
                subtitle: Text(
                  'ID : A000000610',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        Text(
                          'Referral Link',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.7,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Wrap(
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  textDirection: TextDirection.ltr,
                  direction: Axis.horizontal,
                  children: [
                    SizedBox(
                      height: 140,
                      width: 160,
                      child: Card(
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout,
                                color: Colors.black,
                                size: 40,
                              ),
                              SizedBox(height: 20),
                              Text(
                                ' ${entries[index]},',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
