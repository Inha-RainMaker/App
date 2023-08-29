import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class rankscreen extends StatefulWidget {
  const rankscreen({super.key});

  @override
  State<rankscreen> createState() => _rankscreenState();
}

class _rankscreenState extends State<rankscreen> {

  Widget ranker(AssetImage image,String id,String dp,int grade,int todayrain,Color color1,Color color2,Color color3,){
    return Flexible(
      child:Container(
        width: MediaQuery.of(context).size.width-60,
        height: 190,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white70
                ,width: 0

            ),
            borderRadius: BorderRadius.all(Radius.circular(40)
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 3),
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  GradientText("RAIN MAKER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                    colors: [color1,color2,color3],
                  ),
                ],
              ),
              SizedBox(height: 5,),

              Flexible(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: image,
                        radius: 50,
                      ),
                      SizedBox( width: 50,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('@'+id,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(dp,style: TextStyle(fontSize: 15),),
                          Text('$grade학년',style: TextStyle(fontSize: 15),),

                          Text('TODAY RAIN: $todayrain',style: TextStyle(fontSize: 15),)
                        ],)
                    ],

                  )
              )
            ],
          ),
        ),

      ),
    );
  }



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
            ),


            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      ranker(AssetImage('asset/img/me.jpg'),'gomsuman','컴퓨터 공학과',4,90,Colors.yellow,Colors.yellow,Colors.yellow),
                      ranker(AssetImage('asset/img/me2.jpg'),'zeus','내거친생각과',3,68,Colors.grey,Colors.grey,Colors.grey,),
                      ranker(AssetImage('asset/img/man.png'),'ok_su','불안한눈빛과',2,48,Colors.brown,Colors.brown,Colors.brown),




                  ],

                ),
              ),

          )   ,
        );

  }
}