import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:corona_apps/feature/home/view/homeView.dart';
import 'package:corona_apps/feature/hotline/view/hotlineView.dart';
import 'package:corona_apps/feature/kasus/view/kasusView.dart';
import 'package:corona_apps/feature/profile/view/profileView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainTabbar extends StatefulWidget {

  int selectedIndex;

  MainTabbar({this.selectedIndex});

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
  void initState() {

    if(widget.selectedIndex != null) {

      _onSelectedTab(widget.selectedIndex);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: crntIndex,
        children: screen,
      ),
      bottomNavigationBar : BottomNavigationBar(
        backgroundColor: ColorConfig.colorWhite,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coronavirus_outlined),
            label: 'Kasus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Hotline',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'profile',
          ),
        ],
        currentIndex: crntIndex,
        unselectedItemColor: ColorConfig.colorGrey,
        selectedItemColor: ColorConfig.colorIconSembuh,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        onTap: (e) => {this._onSelectedTab(e)},
      ),
    );
  }
}

