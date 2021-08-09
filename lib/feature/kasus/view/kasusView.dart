import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KasusView extends StatefulWidget {

  @override
  _KasusViewState createState() => _KasusViewState();
}

class _KasusViewState extends State<KasusView> {

  var dataKasusTerbanyak = [
    {"image": "asset/image/backgroundKasusTerbanyak.png"},
    {"image": "asset/image/backgroundKasusTerbanyak.png"},
    {"image": "asset/image/backgroundKasusTerbanyak.png"},
    {"image": "asset/image/backgroundKasusTerbanyak.png"}
  ];

  Widget appBar() {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Update Terbaru Covid-19",
            style: TextStyle(
                color: ColorConfig.colorWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
          Container(
            width: 320,
            margin: EdgeInsets.only(top: 10),
            child: Text("Update terakhir 31 Juli 2021 - 08:16 WIB",
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConfig.colorWhite,
                fontSize: 14,
              ),),
          )
        ],
      ),
    );
  }

  Widget header() {
    return Container(
        height: 430,
        decoration: BoxDecoration(
            color: ColorConfig.colorBackground,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
            )
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              top: 0,
              child: Image(image: AssetImage("asset/image/headerKasus.png"),
                width: 410,
                fit: BoxFit.cover,
              ),),
            Positioned(
                top: 45,
                left: 24,
                child: appBar()
            ),
            Positioned(
              top: 120,
              left: 24,
              right: 24,
              child: Container(
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                    borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Image(image: AssetImage("asset/image/indo.png"),
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text("Indonesia",
                            style: TextStyle(
                                color: ColorConfig.colorBlack
                            )),
                      ),
                    ),
                    IconButton(
                        iconSize: 26,
                        color: ColorConfig.colorGrey,
                        icon: Icon(Icons.keyboard_arrow_down_sharp),
                        onPressed: () => {print("press")}),
                  ],
                ),
              ),),
            Positioned(
              top: 185,
              left: 24,
              right: 24,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorWhite,
                      borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: FlatButton(onPressed: () => {},
                            child: Text("Total",
                              style: TextStyle(
                              color: ColorConfig.colorBlack
                            ),),
                      )),
                      Expanded(
                        child: Container(
                            child: FlatButton(onPressed: () => {},
                              child: Text("Hari ini",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack
                                ),),
                            )),
                      ),
                      Container(
                          child: FlatButton(onPressed: () => {},
                            child: Text("Kemarin",
                              style: TextStyle(
                                  color: ColorConfig.colorBlack
                              ),),
                          )),
                ],
              ),
            )),
            Positioned(
                top: 240,
                left: 24,
                child: Container(
                  height: 160,
                  width: 110,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: ColorConfig.colorWhite,
                      borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("asset/image/coronaVirusYellow.png"),
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Terinfeksi",
                            style: TextStyle(
                                color: ColorConfig.colorBlack
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("3.37 jt",
                            style: TextStyle(
                                color: ColorConfig.colorIconTerinfeksi,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("+41.168",
                            style: TextStyle(
                              color: ColorConfig.colorGrey,
                              fontSize: 12,
                            )),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 240,
                left: 150,
                child: Container(
                  height: 160,
                  width: 110,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: ColorConfig.colorWhite,
                      borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("asset/image/sembuh.png"),
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Sembuh",
                            style: TextStyle(
                                color: ColorConfig.colorBlack
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("2.73 jt",
                            style: TextStyle(
                                color: ColorConfig.colorIconSembuh,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("+44.550",
                            style: TextStyle(
                              color: ColorConfig.colorGrey,
                              fontSize: 12,
                            )),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 240,
                right: 24,
                child: Container(
                  height: 160,
                  width: 110,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: ColorConfig.colorWhite,
                      borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image(image: AssetImage("asset/image/kematian.png"),
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 17),
                        child: Text("Meninggal",
                            style: TextStyle(
                                color: ColorConfig.colorBlack
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("92.331",
                            style: TextStyle(
                                color: ColorConfig.colorIconKematian,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("+1.759",
                            style: TextStyle(
                              color: ColorConfig.colorGrey,
                              fontSize: 12,
                            )),
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: -20,
                left: 24,
                right: 24,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorWhite,
                      borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                          child: FlatButton(onPressed: () => {},
                            child: Text("Kasus Aktif",
                              style: TextStyle(
                                  color: ColorConfig.colorBlack
                              ),),
                          )),
                      Expanded(
                        child: Container(
                            child: FlatButton(onPressed: () => {},
                              child: Text("Sembuh",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack
                                ),),
                            )),
                      ),
                      Container(
                          child: FlatButton(onPressed: () => {},
                            child: Text("Meninggal",
                              style: TextStyle(
                                  color: ColorConfig.colorBlack
                              ),),
                          )),
                    ],
                  ),
                )),
          ],
        )
    );
  }

  Widget kasusTerbanyak() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 24, right: 24, top: 32),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Container(
                        child: Text("Kasus Terbanyak",
                            style: TextStyle(
                              color: ColorConfig.colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      ),
                ),
                Expanded(
                    child: Text("")),
                TextButton(
                    onPressed: () => {},
                    child: Text("Lihat Semua",
                      style: TextStyle(
                          color: ColorConfig.colorIconSembuh,
                          fontSize: 12
                      ),)),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bannerKasusTerbanyak () {
    return Container(
        height: 150,
        margin:  EdgeInsets.only(top: 16, left: 24),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dataKasusTerbanyak.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 8),
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(dataKasusTerbanyak[index]["image"])
                    )
                ),
              );
            }));
  }

  Widget vaksin() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 24, right: 24, top: 32),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Container(
                    child: Text("Vaksinisasi Indonesia",
                        style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Image(image: AssetImage("asset/image/indo.png"),
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget bannervaksin () {
  //   return Container(
  //       height: 150,
  //       margin:  EdgeInsets.only(top: 16, left: 24),
  //       child: ListView.builder(
  //           scrollDirection: Axis.horizontal,
  //           itemCount: dataVaksin.length,
  //           itemBuilder: (context, index) {
  //             return Container(
  //               margin: EdgeInsets.only(right: 8),
  //               width: MediaQuery.of(context).size.width - 30,
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(8),
  //                   image: DecorationImage(
  //                       fit: BoxFit.cover,
  //                       image: AssetImage(dataVaksin[index]["image"])
  //                   )
  //               ),
  //             );
  //           }));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConfig.colorWhite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              kasusTerbanyak(),
              bannerKasusTerbanyak(),
              vaksin(),
            ],
          ),
        ),
      ),
    );
  }
}
