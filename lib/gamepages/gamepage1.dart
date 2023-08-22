import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class gamepage1 extends StatefulWidget {
  const gamepage1({super.key});

  @override
  State<gamepage1> createState() => _gamepage1State();
}

class _gamepage1State extends State<gamepage1> {
  Color boxcolor=Colors.white;
  Widget people_info(int a){
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


  @override
  Widget build(BuildContext context) {
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
                  people_info(4),
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
                  people_info(10)
                ],
              ),



            ],
          ),
        )


    );

  }
}
