import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:rain_maker/screen/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rain_maker/LandingPage/LandingPage.dart';
import 'package:rain_maker/screen/login_screen.dart';
import 'package:rain_maker/screen/startscreen.dart';
import 'package:rain_maker/utils/global_variables.dart';

import 'package:rain_maker/screen/singup_screen.dart';
void main()  async{


  runApp(
    MaterialApp(
      home: startscreen(),
    )
  );
}
