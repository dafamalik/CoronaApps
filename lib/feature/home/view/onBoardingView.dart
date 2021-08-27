import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:corona_apps/feature/home/view/homeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  void gotoHomeView() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("asset/image/onBoarding1.png"),
                          width: 226,
                          height: 246,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 32),
                          child: Text(
                            "UPDATE KASUS COVID",
                            style: TextStyle(
                                color: ColorConfig.colorGreenPrimary,
                                fontSize: 18,
                                fontFamily: 'NunitoBold'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Text(
                            "Dapatkan update terbaru tentang kasus Covid-19 yang terjadi di Indonesia dan seluruh dunia",
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConfig.colorGrey,
                                fontSize: 16,
                                fontFamily: 'nunitoRegular'),
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                  decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("asset/image/onBoarding2.png"),
                          width: 226,
                          height: 246,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 32),
                          child: Text(
                            "CEK COVID-19 MANDIRI",
                            style: TextStyle(
                                color: ColorConfig.colorGreenPrimary,
                                fontSize: 18,
                                fontFamily: 'NunitoBold'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Text(
                            "Hasil analisa cek Covid-19 secara mandiri yang didasarkan keadaan kondisi Anda saat ini",
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConfig.colorGrey,
                                fontSize: 16,
                                fontFamily: 'nunitoRegular'),
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                  decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("asset/image/onBoarding3.png"),
                          width: 226,
                          height: 246,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 32),
                          child: Text(
                            "BERITA SEPUTAR COVID-19",
                            style: TextStyle(
                                color: ColorConfig.colorGreenPrimary,
                                fontSize: 18,
                                fontFamily: 'NunitoBold'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Text(
                            "Selalu pantau penyebaran Covid-19 dengan berita terbaru dari sumber terbaik dan terpercaya",
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConfig.colorGrey,
                                fontSize: 16,
                                fontFamily: 'nunitoRegular'),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              child: Image(
                image: AssetImage("asset/image/onBoardingFooter.png"),
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            )),
        Positioned(
            bottom: 32,
            right: 24,
            child: Container(
              height: 45,
              width: 116,
              margin: EdgeInsets.only(top: 16, left: 8),
              decoration: BoxDecoration(
                color: ColorConfig.colorGreenPrimary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: FlatButton(
                  onPressed: () => {this.gotoHomeView()},
                  child: Text(
                    "Selesai",
                    style: TextStyle(
                      color: ColorConfig.colorWhite,
                      fontFamily: 'NunitoSemiBold',
                      fontSize: 14,
                    ),
                  )),
            ))
      ]),
    );
  }
}
