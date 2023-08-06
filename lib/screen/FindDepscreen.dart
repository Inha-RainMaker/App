import 'package:flutter/material.dart';
import 'package:rain_maker/components/deplist.dart';
import 'package:rain_maker/screen/gradescreen.dart';
class finddep extends StatefulWidget {
  const finddep({super.key});

  @override
  State<finddep> createState() => _finddepState();
}

String searchText= '';

class _finddepState extends State<finddep> {



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

        title: Text("학과는 한번 선택후 변경 불가능!",textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w900
        ),
        )

      ),



    body: Column(
      children:<Widget> [
        Padding(padding: const EdgeInsets.all(20),
            child :TextField(
                decoration : InputDecoration(
                  hintText: '학과를 입력하시오',
                  border: OutlineInputBorder(),
                ),
              onChanged: (value){

                  setState(() {
                    searchText=value;
                  });
              },
        ),
        ),


        Expanded(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index){
                if(searchText.isNotEmpty && !items[index].toLowerCase()
                    .contains(searchText.toLowerCase())){
                  return SizedBox.shrink();
                }
                else{
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
                      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const gradescreen(),
                    ),
                    ),
                    )

                  );
                }


              }
          ),
        )
      ],


    )


      );

  }
}
