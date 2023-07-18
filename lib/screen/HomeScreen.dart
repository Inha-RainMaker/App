import 'dart:js';
import 'package:rain_maker/LandingPage/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:rain_maker/mainpages/alarmscreen.dart';
import 'package:rain_maker/mainpages/mainscreen.dart';
import 'package:rain_maker/mainpages/myscreen.dart';
import 'package:rain_maker/mainpages/rankscreen.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({

    super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(icon: Icon(Icons.grid_on_outlined),label:'1번' ),
    BottomNavigationBarItem(icon: Icon(Icons.local_fire_department_outlined),label: '2번'),
    BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined),label:'3번'),
    BottomNavigationBarItem(icon: Icon(Icons.person),label:'4번'),
  ];
  List pages=[
    mainscreen(),
    rankscreen(),
    alarmsscreen(),
    myscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppBar(),
      body: pages[_selectedIndex],
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  AppBar renderAppBar(){
    return AppBar(
      centerTitle: true ,
      title: Text('Rain Maker',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w700,
        ),
      ),
      leading: IconButton(
        onPressed: (){},
        color: Colors.black,
        icon: Icon(Icons.arrow_back),
      ),
      actions:[
        IconButton(onPressed: (){},
            icon: Icon(Icons.attach_money))
      ],
      backgroundColor: Colors.white,
    );
  }

  BottomNavigationBar renderBottomNavigation(){
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
    selectedFontSize: 14,
    unselectedFontSize: 10,
    currentIndex: _selectedIndex,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    onTap: (int index){
          setState(() {
            _selectedIndex=index;
          });
    },
      items:bottomItems,

);
  }
}
