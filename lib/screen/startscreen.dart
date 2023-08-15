import 'package:flutter/material.dart';
import 'package:rain_maker/screen/FindDepscreen.dart';
import 'package:rain_maker/screen/login_screen.dart';
import 'package:rain_maker/screen/singup_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class startscreen extends StatelessWidget {
  const startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
       appBar: AppBar(
         elevation: 0,
         backgroundColor: Colors.white,
       ),




        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 100,),
              GradientText(
                'RAIN MAKER',textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'righteous',
                    fontSize: 70,
                    fontWeight: FontWeight.w200,


                ),
                colors: [
                  Colors.blueAccent,
                  Colors.cyan
                ]
              ),
              SizedBox(height: 100,),

            GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                 builder: (context) => const LoginScreen(),
                 ),
               ),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(10)),
                     gradient: LinearGradient(
                       begin: Alignment.centerLeft,
                       end: Alignment.bottomRight,
                       colors: [

                         Colors.cyan,
                         Colors.blueAccent
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
                           ' 이미 가입 되어있으신가요? 로그인!',textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                                 ),
                              ),
                      ],
                    ),
                        )
                    ),
            SizedBox(height: 48,),



              GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const finddep(),
                  ),
                  ),
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [

                              Colors.pinkAccent,
                              Colors.amberAccent


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
                          ' 회원 가입 하기!',
                          textAlign: TextAlign.center, style: TextStyle(
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
        )

    );
  }
}
