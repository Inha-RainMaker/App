import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rain_maker/screen/HomeScreen.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 1500),(){
      Navigator.push(context,
      MaterialPageRoute(builder: (context)
      =>HomeScreen())
      );
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset('asset/img/logo.png'),
        ),
      ),
      

    );
  }
}
