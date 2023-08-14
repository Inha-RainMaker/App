import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rain_maker/utils/pickImage.dart';
import 'dart:typed_data';

class myscreen extends StatefulWidget {
  const myscreen({super.key});

  @override
  State<myscreen> createState() => _myscreenState();
}

class _myscreenState extends State<myscreen> {
  Uint8List? _file;
  _selectImage(BuildContext context) async {
    return showDialog(context: context, builder: (context) {
      return SimpleDialog(
        title: const Text('사진 선택'),
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('사진 찍기'),
            onPressed: () async {
              Navigator.of(context).pop();
              Uint8List file = await pickImage(ImageSource.camera,);
              setState(() {
                _file = file;
              });
            },
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('갤러리에서 사진 선택'),
            onPressed: () async {
              Navigator.of(context).pop();
              Uint8List file = await pickImage(
                ImageSource.gallery,
              );
              setState(() {
                _file = file;
              });
            },
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('취소'),
            onPressed: () async {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    });
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('PROFILE',style: TextStyle(
          foreground: Paint()
            ..shader = LinearGradient(
                colors: <Color>[
                  Colors.cyan,
                  Colors.lightBlueAccent,


                ]
            ).createShader(Rect.fromLTWH(100, 100, 200, 20),),
          fontFamily: 'righteous',



        ),),
        centerTitle: false,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child:
      Padding(padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('asset/img/me.jpg'),
                radius: 50,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize:MainAxisSize.min,

                  children: [
                    buildSateColum(20, '오늘 받은 칭찬'),
                    Container(width: 1,height: 50,color: Colors.grey,),
                    buildSateColum(150, '받은 칭찬'),

                  ],

                ),
              ),


            ],
          ),
          SizedBox(height: 16,),
          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //유저 이름
                  Text("김수민",textAlign:TextAlign.start,

                    style: TextStyle(
                        foreground: Paint()
                          ..shader = LinearGradient(
                              colors: <Color>[
                                Colors.lightBlueAccent,

                                Colors.cyan

                              ]
                          ).createShader(Rect.fromLTWH(100, 100, 200, 20),

                          ),fontSize:  25
                    ),
                  ),
                  //유저 네임
                  Text("@gomsuman",style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                    fontWeight: FontWeight.w700

                  ),),
                  //학년 과
                  Text("컴퓨터 공학과",style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15

                  ),),
                  Text("4학년",style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15

                  ),),
                ],
              ),

            ],
          )
          ,SizedBox(height: 16,)
          ,Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

             GestureDetector(
                  onTap: () => _selectImage(context),
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.cyan,
                              Colors.blueAccent
                            ]
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 3),

                          )
                        ]
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '사진 업로드',textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),
                  )
              ),
              SizedBox(width: 16,),
              GestureDetector(
                  onTap: () => _selectImage(context),
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.blueAccent,
                              Colors.cyan,

                            ]
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 3),

                          )
                        ]
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '프로필 편집',textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),
                  )
              ),
           ],
        ),
          Container(height: 16,),
          Row(
            children: [Text("내가 받은 칭찬 TOP 3",style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 15,
              color: Colors.grey
            ),)],
          ),
          SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("1.",style: TextStyle(color: Colors.yellow,fontSize: 30,
              fontWeight: FontWeight.w600
              ),),
              Container(

                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text("가장 웃음이 많을 것 같은사람",
                    textAlign: TextAlign.center,
                    style: TextStyle(

                    fontSize: 25,
                    fontWeight: FontWeight.w600,

                    foreground: Paint()
                      ..shader = LinearGradient(
                          colors: <Color>[
                            Colors.yellow.shade600,
                            Colors.orangeAccent.shade400,
                          ]
                      ).createShader(Rect.fromLTWH(200, 100, 200, 20),
                      ),
                  ),),
                ),
              ),
            ],
          ),
          SizedBox(height: 48,),
          Text("2. 가장 웃음이 많을 것 같은사람", style: TextStyle(

            fontSize: 25,
            fontWeight: FontWeight.w600,

            foreground: Paint()
              ..shader = LinearGradient(
                  colors: <Color>[
                    Colors.grey.shade600,
                    Colors.grey.shade400,
                  ]
              ).createShader(Rect.fromLTWH(200, 100, 200, 20),
              ),
          ),),
          SizedBox(height: 48,),
          Text("3. 가장 웃음이 많을 것 같은사람", style: TextStyle(

            fontSize: 25,
            fontWeight: FontWeight.w600,

            foreground: Paint()
              ..shader = LinearGradient(
                  colors: <Color>[
                    Colors.brown.shade600,
                    Colors.brown.shade300
                  ]
              ).createShader(Rect.fromLTWH(200, 100, 200, 20),
              ),
          ),),
          SizedBox(height: 16,),


        ],




      ),
    ),

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
