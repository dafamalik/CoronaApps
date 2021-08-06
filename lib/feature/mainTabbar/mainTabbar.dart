import 'package:corona_apps/feature/home/view/homeView.dart';
import 'package:corona_apps/feature/hotline/view/hotlineView.dart';
import 'package:corona_apps/feature/kasus/view/kasusView.dart';
import 'package:corona_apps/feature/profile/view/profileView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainTabbar extends StatefulWidget {


  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {

  var screen = [
    HomeView(),
    KasusView(),
    HotlineView(),
    ProfileView()
  ];

  var crntIndex = 0;

  void _onSelectedTab(value){

    setState(() {
      crntIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[crntIndex],
      bottomNavigationBar : BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Kasus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Hotline',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: crntIndex,
        selectedItemColor: Colors.green,
        onTap: (e) => {this._onSelectedTab(e)},
      ),
    );
  }
}
