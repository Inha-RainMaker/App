import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class alarmsscreen extends StatefulWidget {
  const alarmsscreen({super.key});

  @override
  State<alarmsscreen> createState() => _alarmsscreenState();
}

Widget _activeitemOne(String a) {
  return Container(

    decoration: BoxDecoration(

        borderRadius: BorderRadius.all(Radius.circular(10)),
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
      padding: const EdgeInsets.all(10),

      child: Row(
          children: [
      CircleAvatar(
      backgroundImage: AssetImage('asset/img/rainman.png'),
      backgroundColor: Colors.white,
      radius: 30,
    ),
    const SizedBox(
      width: 10,
    ),
    Expanded(
      child: Text.rich(
          TextSpan(text: a,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..shader = LinearGradient(
                    colors: <Color>[
                      Colors.blue,
                      Colors.cyan,
                    ]
                ).createShader(Rect.fromLTWH(0.0, 0.0, 200, 100),
                ),
            ),
            children: [
              TextSpan(text: ' 님이 보낸 RAIN',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                    ),
                ),

              TextSpan(
                text: '   6시간 전',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Colors.black54
                )
              )
            ],
          )


      ),
      ),
            Container(
              width: 10,
              height: 60,
              child:
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(

                  backgroundColor: Colors.cyan,
                  radius: 10,
                ),
              ),
            ),
      ],
    ),
  ),);
}

Widget _activeitemTwo(String a) {
  return Container(
    decoration: BoxDecoration(

        borderRadius: BorderRadius.all(Radius.circular(10)),
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
      padding: const EdgeInsets.all(10),

      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('asset/img/raingirl.png'),
            backgroundColor: Colors.white,
            radius: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text.rich(
                TextSpan(text: a,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                          colors: <Color>[
                            Colors.pink,
                            Colors.pinkAccent,
                            Colors.deepOrange,
                          ]
                      ).createShader(Rect.fromLTWH(0.0, 0.0, 200, 100),
                      ),
                  ),
                  children: [
                    TextSpan(text: ' 님이 보낸 RAIN',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    TextSpan(
                        text: '   6시간 전',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                            color: Colors.black54
                        )
                    )
                  ],
                )


            ),
          ),


        ],
      ),
    ),);
}


class _alarmsscreenState extends State<alarmsscreen> {
  List<String> gaslist=['가장 무뭐뭫 한 사람','웃을때 가장 멋있는사람', '학교도서관에 살것 같은 사람'];
  late List<String> reversgaslist=gaslist.reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            title: GradientText("WHO RAIN YOU"
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
          actions: [
            IconButton(
              icon: Image.asset('asset/img/money3.png'),
              iconSize: 90 ,
              onPressed: () {},
            )
          ],
        ),
        body: ListView.builder(
            itemCount: reversgaslist.length,
            itemBuilder:(context,index){
              return
                    Card(
                      elevation: 5,
                        shape:  RoundedRectangleBorder(  borderRadius:
                        BorderRadius.all(Radius.elliptical(30,30))),
                        child: _activeitemTwo(reversgaslist[index]));


           }


        )

      ),
    );
  }
}
