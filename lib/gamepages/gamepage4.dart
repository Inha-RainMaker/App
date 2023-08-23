import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:rain_maker/components/gamepeople_info.dart';
class gamepage4 extends StatefulWidget {
  final String Q;
  final Function changenext;
  const gamepage4({
    required this.Q,
    required this.changenext,
    super.key});

  @override
  State<gamepage4> createState() => _gamepage4State();
}

class _gamepage4State extends State<gamepage4> {
  int selectednum=0;
  void changecolor(int num) {
    //components의 버튼에 함수를 넘겨 main에서 state를 변경
    setState(() {
      selectednum = num;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientText(widget.Q,style: TextStyle(
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
                  people_info(productnum: 1, selectednum: selectednum, dep: '컴퓨터 공학과', mdti: 'entj', grade: 2, changecolor: changecolor,changenext: widget.changenext),
                  people_info(productnum: 2, selectednum: selectednum, dep: '내거친생각과', mdti: 'estp', grade: 4, changecolor: changecolor,changenext: widget.changenext),
                ],
              ),SizedBox(height: 16,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(productnum: 3, selectednum: selectednum, dep: '체육교육과', mdti: 'entj', grade: 4, changecolor: changecolor,changenext: widget.changenext),
                  people_info(productnum: 4, selectednum: selectednum, dep: '공간정보공학과', mdti: 'istp', grade: 1, changecolor: changecolor,changenext: widget.changenext),
                ],
              ),SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(productnum: 5, selectednum: selectednum, dep: '컴퓨터 공학과', mdti: 'aspa', grade: 2, changecolor: changecolor,changenext: widget.changenext),
                  people_info(productnum: 6, selectednum: selectednum, dep: '컴퓨터 공학과', mdti: 'newh', grade: 4, changecolor: changecolor,changenext: widget.changenext),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  people_info(productnum: 7, selectednum: selectednum, dep: '컴퓨터 공학과', mdti: 'aspa', grade: 2, changecolor: changecolor,changenext: widget.changenext),
                  people_info(productnum: 8, selectednum: selectednum, dep: '컴퓨터 공학과', mdti: 'newh', grade: 4, changecolor: changecolor,changenext: widget.changenext),
                ],
              )


            ],
          ),
        )


    );


  }
}
