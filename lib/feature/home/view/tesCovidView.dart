import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:corona_apps/feature/home/view/homeView.dart';
import 'package:corona_apps/feature/home/view/tesCovidQuestionView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TesCovidView extends StatefulWidget {
  @override
  _TesCovidViewState createState() => _TesCovidViewState();
}

class _TesCovidViewState extends State<TesCovidView> {

  void gotoHomeView() {
    Navigator.of(context).pop();
  }

  void gotoTesCovidQuestionView() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => TesCovidQuestionView())
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        children: [
          IconButton(
            iconSize: 25,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => {this.gotoHomeView()})
        ],
      ),
    );
  }

  Widget contents() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage("asset/image/tesCovidImage.png")),
          Container(
            margin: EdgeInsets.only(top: 32),
            child: Text("Pengecekan Covid-19 Mandiri",
              style: TextStyle(
              color: ColorConfig.colorBlack,
                fontSize: 18,
                fontFamily: 'NunitoBold'
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 24, right: 24),
            child: Text("Pilih jawaban sesuai atau yang paling mendekati kondisi Anda saat ini.",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
              color: ColorConfig.colorGrey,
                fontFamily: 'NunitoRegular',
                fontSize: 16,
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("Klik Mulai Tes untuk memulai",
              style: TextStyle(
              color: ColorConfig.colorGrey,
                fontFamily: 'NunitoRegular',
                fontSize: 16,
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            height: 45,
            width: 173,
            decoration: BoxDecoration(
              color: ColorConfig.colorGreenPrimary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: InkWell(
              onTap: () => {this.gotoTesCovidQuestionView()},
              child: Container(
                margin: EdgeInsets.only(top: 12),
                child: Text("Mulai Tes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: ColorConfig.colorWhite,
                    fontFamily: 'NunitoSemiBold',
                    fontSize: 16,
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.colorBackground,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                header(),
                contents(),
              ],
            )
          )
        ));
  }
}
