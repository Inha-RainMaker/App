import 'package:flutter/material.dart';



import 'package:flutter/material.dart';
import 'package:rain_maker/widget/text_field_input.dart';
import 'package:rain_maker/screen/singup_screen.dart';
class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _phonenumberController=TextEditingController();
  final TextEditingController _usernameController=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _phonenumberController.dispose();
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
              children: [

                Text(
                  'rain maker',
                  style: TextStyle(
                      fontFamily: 'code',
                      fontSize: 50,
                      fontWeight: FontWeight.w200,
                      foreground: Paint()
                    ..shader = LinearGradient(
                        colors: <Color>[
                          Colors.red,
                          Colors.cyan,
                        ]
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200, 100),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Stack(
                  children: [
                     const CircleAvatar(
                      radius: 64,
                      backgroundImage: AssetImage('asset/img/me.jpg'),
                    ),
                    Positioned(
                        bottom: -10,
                        left: 80,
                        child: IconButton(
                           onPressed: (){},
                           icon:Icon(Icons.add_a_photo),))
                  ],
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("User name", style: TextStyle(fontSize: 20),),],),
                const SizedBox(height: 16),

                TextFieldInput(
                    textEditingController: _emailController ,
                    hintText: 'Enter your username',
                    textInputType: TextInputType.text) ,
                const SizedBox(height: 16),

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
                    isPass: true
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Phone Number", style: TextStyle(fontSize: 20),),],),
                const SizedBox(height: 16),
                TextFieldInput(
                    textEditingController: _phonenumberController,
                    hintText: 'Enter your Phone Number',
                    textInputType: TextInputType.text,

                ),
                const SizedBox(height: 16),




                Container(
                  child: const Text('Sign In'),
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


              ],

            ),
          ),
        ),
      ),
    );
  }
}
