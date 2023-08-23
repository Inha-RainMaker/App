
import 'package:flutter/material.dart';

class people_info extends StatefulWidget {
  final int productnum;
  final int selectednum;
  final int grade;
  final String dep;
  final String mdti;
  final Function changecolor;
  final Function changenext;


  const people_info({
    required this.productnum,
    required this.selectednum,
    required this.dep,
    required this.mdti,
    required this.grade,
    required this.changecolor,
    required this.changenext,

    super.key});

  @override
  State<people_info> createState() => _people_infoState();
}

class _people_infoState extends State<people_info> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          widget.changecolor(widget.productnum);
          widget.changenext();
        },
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: widget.productnum==widget.selectednum?[
                    Colors.cyanAccent,
                    Colors.blueAccent

                  ]:[
                    Colors.white,
                    Colors.white,

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('asset/img/me.jpg'),
                radius: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(widget.dep, style: TextStyle(
                      color: Colors.black
                  ),), Text('${widget.grade}학년', style: TextStyle(
                      color: Colors.black
                  ),),
                ],
              ),
              Text(widget.mdti, style: TextStyle(color: Colors.black),)
            ],
          ),
        )
    );
  }
}
