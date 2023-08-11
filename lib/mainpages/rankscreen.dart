import 'package:flutter/material.dart';
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
            title: Text("RAIN RANKER"
              ,textAlign: TextAlign.center,
              style: TextStyle(
                  foreground: Paint()
                    ..shader = LinearGradient(
                        colors: <Color>[
                          Colors.lightBlueAccent,
                          Colors.pinkAccent,
                          Colors.cyan

                        ]
                    ).createShader(Rect.fromLTWH(100, 100, 200, 20),),
                  fontFamily: 'righteous',
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),
            )
        ),
    );

  }
}