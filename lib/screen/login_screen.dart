import 'package:flutter/material.dart';
import 'package:rain_maker/widget/text_field_input.dart';
import 'package:rain_maker/screen/singup_screen.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  'rain maker',
                    style: TextStyle(
                        fontFamily: 'code',
                        fontSize: 80
                        ,
                        fontWeight: FontWeight.w200
                    ),
                ),
                const SizedBox(height: 64),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("ID", style: TextStyle(fontSize: 20),),],),
                const SizedBox(height: 16),

                  TextFieldInput(
                      textEditingController: _emailController ,
                      hintText: 'Enter your email',
                      textInputType: TextInputType.emailAddress) ,
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Password", style: TextStyle(fontSize: 20),),],),

                const SizedBox(height: 16),

                  TextFieldInput(
                      textEditingController: _passwordController ,
                      hintText: 'Enter your password',
                      textInputType: TextInputType.text,
                      isPass: true,

                  ),
                const SizedBox(height: 16),



                Container(
                  child: const Text('Log In'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  color:Colors.lightBlueAccent
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text('계정이 없으신가요? '),
                        padding: const EdgeInsets.symmetric(
                          vertical: 8
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          child: const Text('Sing Up', style: TextStyle(
                              fontWeight:FontWeight.bold),),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8
                          ),
                        ),
                      ),

                    ],
                  ),

                )

              ],

            ),
          ),
        ),
      ),
    );
  }
}
