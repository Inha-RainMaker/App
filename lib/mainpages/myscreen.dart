import 'package:flutter/material.dart';
class myscreen extends StatefulWidget {
  const myscreen({super.key});

  @override
  State<myscreen> createState() => _myscreenState();
}

class _myscreenState extends State<myscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('user name',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/img/me.jpg'),
                    radius: 40,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize:MainAxisSize.min,

                        children: [
                          buildSateColum(20, 'post'),
                          buildSateColum(150, 'folwers'),
                          buildSateColum(10, 'following')
                        ],

                      ),
                    )

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Column buildSateColum(int num,String label){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(num.toString(),
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top:4),
          child: Text(label,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),

      ],
    ) ;
  }
}
