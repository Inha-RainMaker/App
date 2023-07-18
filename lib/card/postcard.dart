import 'package:flutter/material.dart';
class Postcard extends StatefulWidget {
  int number;
   Postcard({
    required this.number,
    super.key});

  @override
  State<Postcard> createState() => _PostcardState();
}

class _PostcardState extends State<Postcard> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 20,
      color:  Colors.blue,
      child: Center(child: Text(widget.number.toString())),
    );
  }
}
