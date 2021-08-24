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
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),),
            Positioned(
                top: 45,
                left: 16,
                child: appBar()
            ),
            Positioned(
              top: 120,
              left: 16,
              right: 16,
              child: Container(
                height: 40,
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
                      margin: EdgeInsets.only(left: 16),
                      child: Image(image: AssetImage("asset/image/indo.png"),
                        width: 19,
                        height: 19,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Text("Indonesia",
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                              fontSize: 14,
                            )),
                      ),
                    ),
                    IconButton(
                        iconSize: 17,
                        color: ColorConfig.colorGrey,
                        icon: Icon(Icons.keyboard_arrow_down_sharp),
                        onPressed: () => {print("press")}),
                  ],
                ),
              ),),
            Positioned(
              top: 185,
              left: 16,
              right: 16,
                child: Container(
                  height: 45,
                  padding: EdgeInsets.all(8),
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
                        height: 33,
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        child: FlatButton(onPressed: () => {},
                            child: Text("Total",
                              style: TextStyle(
                              color: ColorConfig.colorWhite,
                                fontSize: 14,
                            ),),
                      )),
                      Expanded(
                        child: Container(
                            child: FlatButton(onPressed: () => {},
                              child: Text("Hari ini",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                  fontSize: 14,
                                ),),
                            )),
                      ),
                      Container(
                          child: FlatButton(onPressed: () => {},
                            child: Text("Kemarin",
                              style: TextStyle(
                                  color: ColorConfig.colorBlack,
                                fontSize: 14
                              ),),
                          )),
                ],
              ),
            )),
            Positioned(
              bottom: 55,
              left: 16,
              right: 16,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 128,
                      width: 93,
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
                          Image(
                              image: AssetImage(
                                  "asset/image/coronaVirusYellow.png"),
                              width: 36,
                              height: 36),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("Terinfeksi",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontSize: 12)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("3.37 jt",
                                style: TextStyle(
                                    color: ColorConfig.colorIconTerinfeksi,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("+41.168",
                                style: TextStyle(
                                  color: ColorConfig.colorGrey,
                                  fontSize: 10,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 128,
                      width: 93,
                      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                      margin: EdgeInsets.only(left: 16, right: 16),
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
                          Image(
                              image: AssetImage("asset/image/sembuh.png"),
                              width: 36,
                              height: 36),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("Sembuh",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontSize: 12)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("2.73 jt",
                                style: TextStyle(
                                    color: ColorConfig.colorGreenPrimary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("+44.550",
                                style: TextStyle(
                                  color: ColorConfig.colorGrey,
                                  fontSize: 10,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 128,
                      width: 93,
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
                          Image(
                            image: AssetImage("asset/image/kematian.png"),
                            width: 36,
                            height: 36,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("Meninggal",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontSize: 12)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("92.331",
                                style: TextStyle(
                                    color: ColorConfig.colorIconKematian,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("+1.759",
                                style: TextStyle(
                                  color: ColorConfig.colorGrey,
                                  fontSize: 10,
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: -15,
                left: 16,
                right: 16,
                child: Container(
                  height: 45,
                  padding: EdgeInsets.all(8),
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
                          decoration: BoxDecoration(
                            color: ColorConfig.colorIconTerinfeksi,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: FlatButton(onPressed: () => {},
                            child: Text("Kasus Aktif",
                              style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                fontSize: 14,
                              ),),
                          )),
                      Expanded(
                        child: Container(
                            child: FlatButton(onPressed: () => {},
                              child: Text("Sembuh",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                  fontSize: 14,
                                ),),
                            )),
                      ),
                      Container(
                          child: FlatButton(onPressed: () => {},
                            child: Text("Meninggal",
                              style: TextStyle(
                                  color: ColorConfig.colorBlack,
                                fontSize: 14
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
      margin: EdgeInsets.only(left: 16, right: 16, top: 32),
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
                          color: ColorConfig.colorGreenPrimary,
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
        margin:  EdgeInsets.only(top: 16, left: 16),
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
      margin: EdgeInsets.only(left: 16, right: 16, top: 32),
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
                    width: 19,
                    height: 19,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bannervaksin () {
    return Container(
        height: 150,
        margin:  EdgeInsets.only(top: 16, left: 16),
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
