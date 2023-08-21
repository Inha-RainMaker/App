import 'package:flutter/material.dart';
import 'package:rain_maker/components/gamepeople_info.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:rain_maker/mainpages/gamescreen.dart';
class gamepage1 extends StatefulWidget {
  const gamepage1({super.key});

  @override
  State<gamepage1> createState() => _gamepage1State();
}

class _gamepage1State extends State<gamepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child:Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GradientText("학점이 높을 것 같은 사람은?",style: TextStyle(
                    fontSize: 20
                )
                  ,colors: [
                    Colors.cyanAccent,
                    Colors.blueAccent
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    people_info(),
                    people_info()
                  ],
                ),SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    people_info(),
                    people_info()
                  ],
                ),SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    people_info(),
                    people_info()
                  ],
                ),SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    people_info(),
                    people_info()
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: (){}, child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.autorenew,color: Colors.blueAccent,),
                        SizedBox(width: 10,),
                        GradientText("  셔플",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                          colors: [Colors.blueAccent,Colors.cyanAccent],
                        )
                      ],
                    )),

                    TextButton(onPressed: (){
                    }, child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GradientText("건너뛰기",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                          colors: [Colors.cyanAccent,Colors.blueAccent,],
                        ), SizedBox(width: 10,),
                        Icon(Icons.navigate_next,color: Colors.blueAccent,),
                      ],
                    ))
                    ,
                  ],
                ),


              ],
            ),
          )


      )

    ,
    );
  }
}
