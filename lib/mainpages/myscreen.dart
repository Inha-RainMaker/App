import 'package:flutter/material.dart';
class myscreen extends StatefulWidget {
  const myscreen({super.key});

  @override
  State<myscreen> createState() => _myscreenState();
}

class _myscreenState extends State<myscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('마이 페이지'),
    );
  }
}
