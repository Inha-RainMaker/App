import 'package:flutter/material.dart';

class gradescreen extends StatefulWidget {
  const gradescreen({super.key});

  @override
  State<gradescreen> createState() => _gradescreenState();
}
List<String> items = ['1학년', '2학년','3학년','4학년'];

class _gradescreenState extends State<gradescreen> {
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

          title: Text("학년을 선택해 주세요! ",textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900
            ),
          )

      ),

      body: Expanded(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index){


                return Card(
                    elevation: 5,
                    shape:  RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(20,20))),
                    child: ListTile(
                      title: Text(items[index],textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                        ),),
                      //여기서 이제 데이터 에다가 학과를 넘겨야함
                      // onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => const ,
                      onTap: (){},
                      ),
                      ),
                    )

                );



            }
        ),
      ),
    );
  }
}
