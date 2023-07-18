import 'package:flutter/material.dart';
import 'package:rain_maker/card/postcard.dart';
import 'package:get/get.dart';
class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  List<List<int>> groupBox=[[],[],[]];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(var i=0;i<100;i++){
      groupBox[i%3].add(1);
    }
    print(groupBox);
  }
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:List.generate(groupBox.length,
                (index)=> Expanded(
                 child: Column(
                   children:List.generate(groupBox[index].length,
                           (jndex) => Container(height: Get.width*0.33*groupBox[index][jndex],
                                      color:Colors.red),),
            

            ),
          )
       ).toList(),
      )
    );
        // children: [
        //
        //   Expanded(
        //     child: Column(children: [
        //       Container(height: 140,color:Colors.red),
        //       Container(height: 140,color:Colors.orange),
        //     ],),
        //   ),Expanded(
        //     child: Column(children: [
        //       Container(height: 140,color:Colors.blue),
        //       Container(height: 140,color:Colors.grey),
        //     ],),
        //   ),Expanded(
        //     child: Column(children: [
        //       Container(height: 140,color:Colors.white),
        //       Container(height: 140,color:Colors.black),
        //     ],),
        //   ),
        //
        // ],


  }
}
