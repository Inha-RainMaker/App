import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class rankscreen extends StatefulWidget {
  const rankscreen({super.key});

  @override
  State<rankscreen> createState() => _rankscreenState();
}

class _rankscreenState extends State<rankscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            title: GradientText("RAIN RANKER"
              ,textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'righteous',
                  fontWeight: FontWeight.w800
              ),
              colors: [
                Colors.blueAccent,
                Colors.cyanAccent
              ],
            ),
            centerTitle: false,
            )
        );

  }
}