import 'package:flutter/material.dart';
import 'package:rain_maker/mainpages/add_post_screen.dart';
import 'package:rain_maker/screen/up_load_profile.dart';
class sel_mbti extends StatefulWidget {
  const sel_mbti({super.key});

  @override
  State<sel_mbti> createState() => _sel_mbtiState();
}
List<String> MBTIlist = ['ISTJ', 'ISTP','INFJ','INTJ','ISFJ','ISFP','INFP','INTP','ESTJ','ESFP','ENFP','ENTP','ESFJ','ESTP','ENFJ','ENTJ'];

class _sel_mbtiState extends State<sel_mbti> {

  int? selectedidx;
  @override
  void initState() {
    selectedidx=0;
    // TODO: implement initState
    super.initState();
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

            title: Text("MBTI를 선택해 주세요! ",textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),
            )

        ),

        body: Column(



          children:<Widget> [



            Expanded(
              child: ListView.builder(
                  itemCount: MBTIlist.length,
                  itemBuilder: (BuildContext context, int index){


                    return Card(
                      elevation: 10,
                      shape:  RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.elliptical(20,20))),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.bottomRight,
                              colors: selectedidx==index?[
                                Colors.cyanAccent,
                                Colors.blueAccent
                              ]:[

                                Colors.white,
                                Colors.white,
                              ]
                          ),
                        ),
                        child: ListTile(
                          title: Text(MBTIlist[index],textAlign: TextAlign.center,
                            style: TextStyle(
                                color: selectedidx==index?Colors.white:Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w900
                            ),),
                          //여기서 이제 데이터 에다가

                          onTap: ()=>setState(() {
                            selectedidx=index;
                          }),
                          //서버로 학년 넘기기
                        ),
                      ),
                    );


                  }



              ),
            )
            ,
            GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const  upload_profile_pic(),
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
            SizedBox(height: 32,)
          ],


        )
    );
  }
}
