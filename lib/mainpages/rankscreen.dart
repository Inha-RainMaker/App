import 'package:flutter/material.dart';
class rankscreen extends StatefulWidget {
  const rankscreen({super.key});

  @override
  State<rankscreen> createState() => _rankscreenState();
}

class _rankscreenState extends State<rankscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: Text('RAIN RANK',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,

          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},

          ),
        )
    );

  }
}