import 'package:flutter/material.dart';
import 'package:rain_maker/gamepages/gamepage1.dart';
import 'package:rain_maker/gamepages/gamepage2.dart';
import 'package:rain_maker/gamepages/gamepage3.dart';
import 'package:rain_maker/gamepages/gamepage4.dart';
import 'package:rain_maker/gamepages/gamepage5.dart';
import 'package:rain_maker/gamepages/gamepage6.dart';
import 'package:rain_maker/gamepages/gamepage7.dart';
import 'package:rain_maker/gamepages/gamepage8.dart';
import 'package:rain_maker/gamepages/gamepage9.dart';
import 'package:rain_maker/gamepages/gamepage10.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:rain_maker/screen/HomeScreen.dart';



class gamescreen extends StatefulWidget {
  const gamescreen({super.key});


  @override
  State<gamescreen> createState() => _gamescreenState();
}



class _gamescreenState extends State<gamescreen> {

  final PageController pageController=PageController(
    initialPage: 0,
  );
  int pageindex=1;


  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  void changenext() {
    //components의 버튼에 함수를 넘겨 main에서 state를 변경
    pageindex==10?Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    ),
    ):pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    setState(() {
      pageindex=pageindex+1;

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading :BackButton(
          color: Colors.blueAccent,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('$pageindex/10', style:TextStyle(
          color: Colors.cyan
        ),),
      ),
      body:
          Column(
            children: [
              Flexible(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection:Axis.horizontal,
                  controller: pageController,
                  children: [
                    gamepage1(Q: "학점이 가장 높은사람은?",changenext: changenext,),
                    gamepage2(Q: "술자리에서 가장 재밌을것 같은사람은?",changenext: changenext,),
                    gamepage3(Q: "신입생때 가장 친구가 많을 것 같은 사람은?",changenext: changenext,),
                    gamepage4(Q: "이런 질문이 떨어짐",changenext: changenext,),
                    gamepage5(Q: "인스타 셀럽일것 같은 친구는?",changenext: changenext,),
                    gamepage6(Q: "어디서든 기죽지 않을것 같은 친구는?",changenext: changenext,),
                    gamepage7(Q: "혼자서도 매우 잘 살것같은 친구는?",changenext: changenext,),
                    gamepage8(Q: "몰라이제",changenext: changenext,),
                    gamepage9(Q: "ㅋㅋㅋ",changenext: changenext,),
                    gamepage10(Q: "빈지노 화이팅",changenext: changenext,),
        ],

      ),
              ),
              Container(
                height: 80,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: (){}, child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.autorenew,color: Colors.blueAccent,),
                        SizedBox(width: 10,),
                        GradientText("  셔플",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                          colors: [Colors.blueAccent,Colors.cyanAccent],
                        )
                      ],
                    )
                    ),

                    TextButton(onPressed:(){
                      pageindex==10?Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                      ):pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                      setState(() {
                        pageindex=pageindex+1;

                      });
                    }, child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GradientText(pageindex==10?'끝내기':'건너뛰기',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                          colors: [Colors.cyanAccent,Colors.blueAccent,],
                        ), SizedBox(width: 10,),
                        Icon(pageindex==10?Icons.close:Icons.navigate_next,color: Colors.blueAccent,),
                      ],
                    )
                    )
                    ,
                  ],
                )
              ),
            ],
          ),






    );
  }
}
