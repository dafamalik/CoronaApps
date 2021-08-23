import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotlineView extends StatefulWidget {

  @override
  _HotlineViewState createState() => _HotlineViewState();
}

class _HotlineViewState extends State<HotlineView> {


  Widget appBar() {
    return Container(
      height: 100,
      width: 333,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Image(image: AssetImage("asset/image/phoneIcon.png"),
                width: 46,
              height: 46,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Hotline Covid-19 Seluruh Indonesia",
                    maxLines: 2,
                    style: TextStyle(
                        color: ColorConfig.colorWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ],
              ),
            ],
      ),
    );
  }

  Widget header() {
    return Container(
        height: 185,
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
                height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConfig.colorWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: "Cari nama daerah",
                        border: InputBorder.none),
                  ),
                ),
              ),
          ],
        )
    );
  }

  Widget hospitalPhone() {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24),
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16),
                  child: Text("Layanan Nasional Covid-19",
                  style: TextStyle(
                    color: ColorConfig.colorBlack,
                    fontSize: 14
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: Row(
                    children: [
                      Image(image: AssetImage("asset/image/phoneGreen.png"),
                      width: 17,
                      height: 17,),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text("119",
                          style: TextStyle(
                            fontSize: 14,
                            color: ColorConfig.colorBlack
                          ),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text("ACEH",
            style: TextStyle(
              color: ColorConfig.colorBlack,
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
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
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: ColorConfig.colorBorder),
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                        child: Text("Pemerintah Daerah Aceh",
                          style: TextStyle(
                              color: ColorConfig.colorBlack,
                              fontSize: 14
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                        child: Row(
                          children: [
                            Image(image: AssetImage("asset/image/phoneGreen.png"),
                              width: 17,
                              height: 17,),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Text("+62876898765321",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorConfig.colorBlack
                                ),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                        child: Text("RSUD Dr Zainoel Abadin, Banda Aceh",
                          style: TextStyle(
                              color: ColorConfig.colorBlack,
                              fontSize: 14
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                        child: Row(
                          children: [
                            Image(image: AssetImage("asset/image/phoneGreen.png"),
                              width: 17,
                              height: 17,),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Text("+62876898765321",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorConfig.colorBlack
                                ),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text("BALI",
              style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16),
                  child: Text("RSUD Sanjiwani, Gianyar",
                    style: TextStyle(
                        color: ColorConfig.colorBlack,
                        fontSize: 14
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: Row(
                    children: [
                      Image(image: AssetImage("asset/image/phoneGreen.png"),
                        width: 17,
                        height: 17,),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text("+62876898765321",
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorConfig.colorBlack
                          ),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text("BANTEN",
              style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16),
                  child: Text("RSU Kabupaten Tangerang, Kota Tangerang",
                    style: TextStyle(
                        color: ColorConfig.colorBlack,
                        fontSize: 14
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: Row(
                    children: [
                      Image(image: AssetImage("asset/image/phoneGreen.png"),
                        width: 17,
                        height: 17,),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text("+62215577280",
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorConfig.colorBlack
                          ),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConfig.colorBackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              hospitalPhone(),
            ],
          ),
        ),
      ),
    );
  }
}
