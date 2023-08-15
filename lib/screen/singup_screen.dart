import 'dart:typed_data';
import 'package:rain_maker/screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:rain_maker/screen/up_load_profile.dart';
import 'package:rain_maker/utils/pickImage.dart';

import 'package:flutter/material.dart';
import 'package:rain_maker/widget/text_field_input.dart';
import 'package:rain_maker/screen/singup_screen.dart';
class SingupScreen extends StatefulWidget {

  const SingupScreen({

    super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  int seletedinx=0;
  final TextEditingController _idController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _phonenumberController=TextEditingController();
  final TextEditingController _usernameController=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _idController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _phonenumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          centerTitle: true,
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

          title: Text("프로필 설정하기!"
            ,textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900
            ),
          )

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("이름", style: TextStyle(fontSize: 20,
                      foreground: Paint()
                        ..shader = LinearGradient(
                            colors: <Color>[
                              Colors.lightBlueAccent,
                              Colors.pinkAccent,
                              Colors.cyan

                            ]
                        ).createShader(Rect.fromLTWH(100, 100, 200, 20),
                        ),
                    ),),],),
                const SizedBox(height: 16),

                TextFieldInput(
                    
                    textEditingController: _usernameController ,
                    hintText: '실명을 입력해주세요!',
                    textInputType: TextInputType.text) ,
                const SizedBox(height: 8),
                Row(
                  children: [

                    Text("실명이 아닐시 계정이 제한이 됩니다.", style: TextStyle(fontSize: 15,color: Colors.red))
                  ],

                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("유저 네임", style: TextStyle(fontSize: 20,
                      foreground: Paint()
                        ..shader = LinearGradient(
                            colors: <Color>[
                              Colors.lightBlueAccent,
                              Colors.pinkAccent,
                              Colors.cyan

                            ]
                        ).createShader(Rect.fromLTWH(100, 100, 200, 20),
                        ),
                    ),),],),
                const SizedBox(height: 16),

                TextFieldInput(
                    textEditingController: _idController ,
                    hintText: '유저 네임을 입력해주세요!',
                    textInputType: TextInputType.emailAddress) ,
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("비밀번호", style: TextStyle(fontSize: 20,
                      foreground: Paint()
                        ..shader = LinearGradient(
                            colors: <Color>[
                              Colors.lightBlueAccent,
                              Colors.pinkAccent,
                              Colors.cyan

                            ]
                        ).createShader(Rect.fromLTWH(100, 100, 200, 20),
                        ),
                    ),),],),
                const SizedBox(height: 16),
                TextFieldInput(
                    textEditingController: _passwordController ,
                    hintText: '비밀 번호를 입력해주세요',
                    textInputType: TextInputType.text,
                    isPass: true
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("전화번호", style: TextStyle(fontSize: 20,
                      foreground: Paint()
                        ..shader = LinearGradient(
                            colors: <Color>[
                              Colors.lightBlueAccent,
                              Colors.pinkAccent,
                              Colors.cyan

                            ]
                        ).createShader(Rect.fromLTWH(100, 100, 200, 20),
                        ),
                    ),

                    ),],),
                const SizedBox(height: 16),
                TextFieldInput(
                    textEditingController: _phonenumberController,
                    hintText: '전화번호를 입력해주세요!(숫자만 입력)',
                    textInputType: TextInputType.text,

                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () => setState(() {
                          seletedinx=1;
                        }),
                        child: Container(
                          height: 60,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: seletedinx==1?Colors.white:Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.bottomRight,
                                  colors:  seletedinx==1?[
                                    Colors.lightBlueAccent,
                                    Colors.cyan,


                                  ]:[
                                    Colors.white,
                                    Colors.white

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
                                ' 남성 ',textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 18,
                                color: seletedinx==1? Colors.white:Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        )
                    ),
                      SizedBox(width:  45,),

                    GestureDetector(
                        onTap: () => setState(() {
                          seletedinx=2;
                        }),

                        child: Container(
                          height: 60,
                          width: 150 ,
                          decoration: BoxDecoration(
                              border: Border.all(color: seletedinx==2?Colors.white:Colors.pinkAccent),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.bottomRight,
                                  colors:  seletedinx==2?[

                                    Colors.pinkAccent,
                                    Colors.red

                                  ]:[
                                    Colors.white,
                                    Colors.white

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
                                ' 여성 ',textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 18,
                                color:seletedinx==2? Colors.white:Colors.pinkAccent,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 40),

            GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
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

                const SizedBox(height: 16),


              ],

            ),
          ),
        ),
      ),
    );
  }
}
