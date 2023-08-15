import 'package:flutter/material.dart';
import 'package:rain_maker/components/gamepage2.dart';
import 'package:rain_maker/components/gampage.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class gamescreen extends StatefulWidget {
  const gamescreen({super.key});

  @override
  State<gamescreen> createState() => _gamescreenState();
}



class _gamescreenState extends State<gamescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('1/10',style: TextStyle(
          color: Colors.cyan
        ),),
      ),
      body: PageView(
        children: [
          gamepage1(),
          gamepage2()
        ],



      ),



    );
  }
}
