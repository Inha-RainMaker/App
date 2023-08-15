import 'package:flutter/material.dart';

class people_info extends StatefulWidget {
  const people_info({super.key});

  @override
  State<people_info> createState() => _people_infoState();
}

class _people_infoState extends State<people_info> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: () {},
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
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
                    ),),Text("4학년",style: TextStyle(
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
  }

