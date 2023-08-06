import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rain_maker/utils/pickImage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'package:rain_maker/screen/login_screen.dart';
import 'package:rain_maker/screen/singup_screen.dart';

class upload_profile_pic extends StatefulWidget {
  const upload_profile_pic({super.key});

  @override
  State<upload_profile_pic> createState() => _upload_profile_picState();
}


class _upload_profile_picState extends State<upload_profile_pic> {
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
          flexibleSpace: new Container(
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
            ),

          ),

          title: Text("나를 알아볼 수 있게 프로필 설정하기!"
              ,textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900
            ),
          )

      ),

      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _file==null?
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 1)],
                border: Border.all(color: Colors.white),
              ),
              child: CircleAvatar(
                backgroundImage:
                AssetImage('asset/img/man.png'),

                radius: 100,
              ),
            ):
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 1)],
                border: Border.all(color: Colors.white),
              ),
              child: CircleAvatar(
                backgroundImage:MemoryImage(_file!),
                radius: 100,),
            ),
          ],
        ),
         SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("나를 잘 나타낸 사진을 골라주세요!")
            ],
          ),
          SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () => _selectImage(context),
                    
                    child: Container(
                      height: 60,
                      width: 350,
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
                            ' 사진 업로드 하기',textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 18,
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
          SizedBox(height: 25,),
          GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SingupScreen(),
              ),
              ),
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                        colors: [

                          Colors.pinkAccent,
                          Colors.amberAccent

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
                      ' 다음 ',textAlign: TextAlign.center, style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                ),
              )
          ),



        ]



      )
    );

  }
}
