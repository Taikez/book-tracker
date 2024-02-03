// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:book_tracker/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Material( 
      child: CircleAvatar(
        backgroundColor: HexColor('#f5f6f8'),
        child: Column( 
          children: [
            Spacer(),
            Text('BookTracker', style: TextStyle ( 
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 51,
            )),
            Text('"Journey through pages, track stories."', style: TextStyle ( 
              color: Colors.black38,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 29,
            )),
            Padding(
              padding: const EdgeInsets.only(top: 36.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(48.0),
                child: Image(image: AssetImage('/images/get_started_banner.png'))
              ),
            ),
            SizedBox( 
              height: 50,
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }, 
              icon: Icon(Icons.login_rounded), 
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Sign in to get started'),
              ),
              style: TextButton.styleFrom( 
                foregroundColor: Colors.white,
                backgroundColor: HexColor('#69639f'),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}


