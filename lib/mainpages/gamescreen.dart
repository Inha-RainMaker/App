import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class gamescreen extends StatefulWidget {
  const gamescreen({super.key});

  @override
  State<gamescreen> createState() => _gamescreenState();
}
Widget gamepage(){
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.white,
    child:Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GradientText("여기서 가장 학점이 높을 것 같은 사람은?",style: TextStyle(
              fontSize: 20
            )
              ,colors: [
                Colors.cyanAccent,
                Colors.blueAccent
              ],
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                people_info(),
                people_info()
              ],
            ),SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                people_info(),
                people_info()
              ],
            ),SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                people_info(),
                people_info()
              ],
            ),SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                people_info(),
                people_info()
              ],
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){}, child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.autorenew,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text("  셔플",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                )),

                TextButton(onPressed: (){}, child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("건너뛰기",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ), SizedBox(width: 10,),
                    Icon(Icons.navigate_next,color: Colors.black,),
                  ],
                ))
                ,
              ],
            ),


          ],
      ),
    )


  );
}


Widget people_info(){

  return GestureDetector(
      onTap: () {},
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              width: 1,
              color: Colors.cyanAccent
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 5),

              )
            ]

        ),
        padding: const EdgeInsets.symmetric(vertical: 2),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('asset/img/me.jpg'),
              radius: 55,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("컴퓨터 공학과",style: TextStyle(
                  color: Colors.black
                ),),Text("4학년",style: TextStyle(
                  color: Colors.black
                ),),
              ],
            ),
            Text("ENTJ",style: TextStyle(color: Colors.black),)


          ],
        ),
      )
  );
}
class _gamescreenState extends State<gamescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('1/10',style: TextStyle(
          color: Colors.cyan
        ),),
      ),
      body: PageView(
        children: [
          gamepage()
        ],



      ),



    );
  }
}
