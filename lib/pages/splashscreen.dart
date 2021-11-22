import 'dart:async';


import 'package:datingapp/pages/emaillogin.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const EmailLogin())));
  }

  Widget build(BuildContext context) {
    return Container(
      
        color: Color(0xffFF7C78),
        child: Center(
          child: Container(
           
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200), color: Colors.white),
            // color: Colors.white,
            child: const Card(
              
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                //size: 50,
              ),
            ),
            
          ),
        )
      

        );
  }
}
