import 'package:flutter/material.dart';
import 'package:rain_maker/widget/text_field_input.dart';
import 'package:rain_maker/screen/singup_screen.dart';
import 'package:rain_maker/screen/HomeScreen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.blueAccent
        ),
        backgroundColor:Colors.white ,
          flexibleSpace: new Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),

          )),

          title: Text("로그인"
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                GradientText(
                  'RAIN MAKER',textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'righteous',
                    fontSize: 70,
                    fontWeight: FontWeight.w200,

                  ),
                  colors: [
                    Colors.blueAccent,
                    Colors.cyanAccent
                  ],
                ),
                const SizedBox(height: 64),
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
                            ).createShader(Rect.fromLTWH(100, 100, 200, 20),)
                      ),),],),
                const SizedBox(height: 16),

                  TextFieldInput(
                      textEditingController: _emailController ,
                      hintText: '유저네임을 입력하세요',
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
                        ).createShader(Rect.fromLTWH(100, 100, 200, 20),)
                    ),
                    ),],),

                const SizedBox(height: 16),

                  TextFieldInput(
                      textEditingController: _passwordController ,
                      hintText: '비밀번호를 입력하세요',
                      textInputType: TextInputType.text,
                      isPass: true,

                  ),
                const SizedBox(height: 32),


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
