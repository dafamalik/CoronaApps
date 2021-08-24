import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HasilTesView extends StatefulWidget {

  @override
  _HasilTesViewState createState() => _HasilTesViewState();
}

class _HasilTesViewState extends State<HasilTesView> {

  void gotoTesCovidQuestion() {
    Navigator.of(context).pop();
  }

  Widget appBar() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 25,
              color: ColorConfig.colorWhite,
              icon: Icon(Icons.arrow_back_ios),
            onPressed: () => {this.gotoTesCovidQuestion()},
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Hasil Analisa",
                  style: TextStyle(
                    color: ColorConfig.colorWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  )),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text("Diambil berdasarkan jawaban Anda",
                    style: TextStyle(
                    color: ColorConfig.colorWhite,
                      fontSize: 14,
                  )),
                ),
                Container(
                  height: 45,
                  width: 212,
                  margin: EdgeInsets.only(top: 16, left: 8),
                  decoration: BoxDecoration(
                    color: ColorConfig.colorTransparent,
                    border: Border.all(color: ColorConfig.colorWhite),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("asset/image/resikoRendah.png"),
                        height: 28,
                        width: 28,
                        color: ColorConfig.colorWhite,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text("RESIKO RENDAH",
                          style: TextStyle(
                          color: ColorConfig.colorWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget header () {
    return Container(
      height: 180,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image(image: AssetImage("asset/image/headerHasil.png"),
              width: 410,
              fit: BoxFit.cover,
            ),),
          Positioned(
              top: 20,
              left: 16,
              right: 16,
              child: appBar())
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Anjuran Terbaik Untuk Anda",
          style: TextStyle(
            color: ColorConfig.colorBlack,
            fontSize: 18,
            fontWeight: FontWeight.bold
          )),
          Container(
            margin: EdgeInsets.only(top: 16),
            height: 98,
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
                  width: 8,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorGreenPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 275,
                            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            child: Text("Anda tetap harus selalu menjaga kesehatan, dan juga menaati protokol kesehatan",
                              maxLines: 3,
                              style: TextStyle(
                                  color: ColorConfig.colorBlack,
                                  fontSize: 14
                              ),),
                          ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            height: 75,
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
                  width: 8,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorGreenPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 275,
                      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Text("Hindari kerumunan yang berpotensi menjadi cluster penyebaran covid-19",
                        maxLines: 3,
                        style: TextStyle(
                            color: ColorConfig.colorBlack,
                            fontSize: 14
                        ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            height: 75,
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
                  width: 8,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorGreenPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 275,
                      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Text("Minum vitamin atau suplemen kesehatan dan makan makanan yang bergizi",
                        maxLines: 3,
                        style: TextStyle(
                            color: ColorConfig.colorBlack,
                            fontSize: 14
                        ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            height: 55,
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
                  width: 8,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorGreenPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 275,
                      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Text("Selalu memakai masket dan hand sanitizer",
                        maxLines: 3,
                        style: TextStyle(
                            color: ColorConfig.colorBlack,
                            fontSize: 14
                        ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("Gejala Yang Anda Alami",
              style: TextStyle(
                color: ColorConfig.colorBlack,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
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
                content()
            ],),
          ),
        ));
  }
}
