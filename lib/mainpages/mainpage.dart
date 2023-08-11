import 'package:flutter/material.dart';



class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
          title: Text("RAIN MAKER"
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
            Text(
              'RAIN MAKER',textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'righteous',
                fontSize: 40,
                fontWeight: FontWeight.w200,

                foreground: Paint()
                  ..shader = LinearGradient(
                      colors: <Color>[
                        Colors.lightBlueAccent,
                        Colors.pinkAccent,
                        Colors.cyan
                      ]
                  ).createShader(Rect.fromLTWH(100, 100, 200, 20),
                  ),
              ),
            ),
            SizedBox(height: 100,),


            SizedBox(height: 48,),



            GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => mainpage(),
                ),
                ),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.bottomRight,
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
