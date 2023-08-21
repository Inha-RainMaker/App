import 'package:flutter/material.dart';
import 'package:rain_maker/components/gamepage2.dart';
import 'package:rain_maker/components/gamepeople_info.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:rain_maker/screen/HomeScreen.dart';



class gamescreen extends StatefulWidget {
  const gamescreen({super.key});


  @override
  State<gamescreen> createState() => _gamescreenState();
}



class _gamescreenState extends State<gamescreen> {

  final PageController pageController=PageController(
    initialPage: 0,
  );
  int pageindex=1;

  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget people_info(int a){

      Color boxcolor=Colors.white;
    return InkWell(
        onTap: ()=>setState(() {

          boxcolor=Colors.black;
        }),
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [
                   boxcolor,
                   boxcolor,
                  ]

              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                  width: 1,
                  color: Colors.cyanAccent
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 5),

                )
              ]

          ),
          padding: const EdgeInsets.symmetric(vertical: 2),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('asset/img/me.jpg'),
                radius: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("컴퓨터 공학과",style: TextStyle(
                      color: Colors.black
                  ),),Text("$a학년",style: TextStyle(
                      color: Colors.black
                  ),),
                ],
              ),
              Text("ENTJ",style: TextStyle(color: Colors.black),)
            ],
          ),
        )
    );
  }


  Widget gamepage1(){
    return Container(
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
                  people_info(10),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(4)
                ],
              ),



            ],
          ),
        )


    );

  }


  Widget gamepage2(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage2",style: TextStyle(
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
                  people_info(1),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(4)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(1),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(4)
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
                  )
                  ),

                  TextButton(onPressed:(){
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                    setState(() {
                      pageindex=3;
                    });
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


    );

  }

Widget gamepage3(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage3",style: TextStyle(
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
                  people_info(5),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(1),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(2)
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
                  )
                  ),
                  TextButton(onPressed: (){
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                              setState(() {
                              pageindex=4;
                              });
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


    );

  }
Widget gamepage4(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage4",style: TextStyle(
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
                  people_info(2),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(3)
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
                  )
                  ),

                  TextButton(onPressed: (){
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                    setState(() {
                      pageindex=5;
                    });
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


    );

  }
Widget gamepage5(){

    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage5",style: TextStyle(
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
                  people_info(2),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(2)
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed:(){}, child:  Row(
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
                  )
                  ),

                  TextButton(onPressed: (){
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                    setState(() {
                      pageindex=6;
                    });
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


    );

  }
Widget gamepage6(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage6",style: TextStyle(
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
                  people_info(1),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(4)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(1)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(1)
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
                  )
                  ),

                  TextButton(onPressed: (){
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                    setState(() {
                      pageindex=7;
                    });
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


    );

  }
Widget gamepage7(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage7",style: TextStyle(
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
                  people_info(2),
                  people_info(1)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(4)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(1),
                  people_info(2)
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
                  )
                  ),

                  TextButton(onPressed: (){
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                    setState(() {
                      pageindex=8;
                    });
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


    );

  }
Widget gamepage8(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage8",style: TextStyle(
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
                  people_info(2),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(1),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(1),
                  people_info(2)
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
                  )
                  ),

                  TextButton(onPressed:(){
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                    setState(() {
                      pageindex=9;
                    });
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


    );

  }
Widget gamepage9(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage9",style: TextStyle(
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
                  people_info(3),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(32),
                  people_info(2)
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
                  )
                  ),

                  TextButton(onPressed: (){
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                    setState(() {
                      pageindex=10;
                    });
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


    );

  }
Widget gamepage10(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText("gamepage10",style: TextStyle(
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
                  people_info(2),
                  people_info(3)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(1),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(3),
                  people_info(2)
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(2),
                  people_info(3)
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
                  )
                  ),

                  TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                  ), child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GradientText("끝내기",
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


    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading :BackButton(
          color: Colors.blueAccent,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('$pageindex/10', style:TextStyle(
          color: Colors.cyan
        ),),
      ),
      body:
          PageView(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection:Axis.horizontal,
            controller: pageController,
            children: [
              gamepage1(),
              gamepage2(),
              gamepage3(),
              gamepage4(),
              gamepage5(),
              gamepage6(),
              gamepage7(),
              gamepage8(),
              gamepage9(),
              gamepage10(),
        ],

      ),






    );
  }
}
