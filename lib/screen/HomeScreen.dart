
import 'package:flutter/cupertino.dart';
import 'package:rain_maker/LandingPage/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:rain_maker/mainpages/alarmscreen.dart';
import 'package:rain_maker/mainpages/mainscreen.dart';
import 'package:rain_maker/mainpages/myscreen.dart';
import 'package:rain_maker/mainpages/rankscreen.dart';
import 'package:rain_maker/mainpages/add_post_screen.dart';
import 'package:rain_maker/mainpages/mainpage.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({

    super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  late PageController pageController;

  void navigationTap(int page){
    pageController.jumpToPage(page);
  }
  @override
  void initState() {
    pageController=PageController();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }



 void onPageChanged(int page){
    setState(() {
      _selectedIndex=page;
    });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        children: [
          mainpage(),
          rankscreen(),
          alarmsscreen(),
          myscreen(),
        ],

        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar:bottombar()
    );
  }

  AppBar renderAppBar(){
    return AppBar(
      centerTitle: true ,
      title: Text('Rain Maker',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w100,
        ),
      ),
      leading: IconButton(
        onPressed: (){},
        color: Colors.black,
        icon: Icon(Icons.arrow_back),
      ),
      actions:[
        IconButton(onPressed: (){},
            icon: Icon(Icons.monetization_on_outlined),color: Colors.yellow,)
      ],
      backgroundColor: Colors.white,
    );
  }

 CupertinoTabBar bottombar (){
    return CupertinoTabBar(
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.grid_on_outlined,color: _selectedIndex==0?Colors.cyan:Colors.grey,),
            backgroundColor: Colors.white ),
        BottomNavigationBarItem(icon: Icon(Icons.local_fire_department_outlined,color: _selectedIndex==1?Colors.cyan:Colors.grey),
            backgroundColor: Colors.white),

        BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined,color: _selectedIndex==2?Colors.cyan:Colors.grey,),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: _selectedIndex==3?Colors.cyan:Colors.grey,),
            backgroundColor: Colors.white,
        ),
      ],
      onTap: navigationTap,
    );






  }
}
