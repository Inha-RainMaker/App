import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:rain_maker/mainpages/gamescreen.dart';
import 'dart:ui' as ui;


class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  final Shader linearGradientShader = ui.Gradient.linear(
      Offset(0, 0), Offset(150, 20), [Colors.cyanAccent, Colors.lightBlue]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
          title: GradientText("RAIN MAKER"
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
      ),
      body:Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Text("WELCOME TO",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'righteous',
              ),
            ),
            SizedBox(height: 10),

            GradientText(
              'RAIN MAKER',textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'righteous',
                fontSize: 45,
                fontWeight: FontWeight.w800,


              ),
              colors: [
                Colors.blueAccent,
                Colors.cyanAccent
              ],
            ),
            SizedBox(height: 100,),


            SizedBox(height: 48,),



            GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>gamescreen(),
                ),
                ),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: [
                            Colors.cyanAccent,
                            Colors.blue


                          ]
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),

                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' START',
                        textAlign: TextAlign.center, style: TextStyle(
                        fontFamily: 'righteous',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                )
            )




          ],
        ),
      ) ,


    );
  }
}
