import 'package:corona_apps/feature/home/view/beritaCovidView.dart';
import 'package:corona_apps/feature/home/view/homeView.dart';
import 'package:corona_apps/feature/home/view/onBoardingView.dart';
import 'package:corona_apps/feature/mainTabbar/mainTabbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          dividerColor: Colors.transparent,
          primarySwatch: Colors.blue,
        ),
        home: MainTabbar()
    );
  }
}
