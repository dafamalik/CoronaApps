import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  Widget appBar() {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Selamat Pagi, Dafa",
            style: TextStyle(
                color: ColorConfig.colorWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
          Container(
            width: 320,
            margin: EdgeInsets.only(top: 8),
            child: Text("Jangan lupa untuk mematuhi protokol kesehatan dan tetap menjaga 5M yah",
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
      height: 590,
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
            child: Image(image: AssetImage("asset/image/headerHome.png"),
              width: 410,
              fit: BoxFit.cover,
              ),),
          Positioned(
              top: 40,
              left: 24,
              child: appBar()
          ),
          Positioned(
              top: 148,
              left: 24,
              right: 24,
              child: Card(
                elevation: 10,
                child: Container(
                  height: 100,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                    borderRadius: BorderRadius.circular(300)
                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage("asset/image/coronaVirusGreen.png"),
                      width: 60,
                      fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pengecekan Covid-19 Mandiri",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorConfig.colorBlack,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 8),
                                child: Text("Berisi daftar pertanyaan untuk memeriksa kondisi Anda",
                                    maxLines: 2,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: ColorConfig.colorGrey)),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(left: 8, right: 8),
                        ),
                      ),
                      IconButton(
                          iconSize: 26,
                          color: ColorConfig.colorIconSembuh,
                          icon: Icon(Icons.navigate_next),
                          onPressed: () => {print("press")}),
                    ],
                  ),
                ),
          )),
          Positioned(
              top: 270,
              left: 24,
              right: 24,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("Update Terbaru Covid-19",
                                style: TextStyle(
                                  color: ColorConfig.colorBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Update terakhir 31 Juli 2021 - 08:16 WIB",
                              style: TextStyle(
                                  color: ColorConfig.colorGrey,
                                  fontSize: 12
                              ),),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text("")),
                    IconButton(
                        iconSize: 26,
                        color: ColorConfig.colorIconSembuh,
                        icon: Icon(Icons.remove_red_eye_outlined),
                        onPressed: () => {print("press")}),
                  ],
                ),
              ),),
          Positioned(
              top: 325,
              left: 24,
              right: 24,
              child: Container(
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                    borderRadius: BorderRadius.circular(10)
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
              bottom: 35,
              left: 24,
              child: Container(
                height: 160,
                width: 110,
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                    borderRadius: BorderRadius.circular(10)
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
              bottom: 35,
              left: 150,
              child: Container(
                height: 160,
                width: 110,
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                    borderRadius: BorderRadius.circular(10)
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
              bottom: 35,
              right: 24,
              child: Container(
                height: 160,
                width: 110,
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: ColorConfig.colorWhite,
                    borderRadius: BorderRadius.circular(10)
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
        ],
      )
    );
  }

  Widget seputarCovid() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(left: 24, right: 24, top: 16),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Seputar Covid-19",
                            style: TextStyle(
                              color: ColorConfig.colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text("Menyajikan berita terkini seputar Covid-19",
                          style: TextStyle(
                              color: ColorConfig.colorGrey,
                              fontSize: 12
                          ),),
                      )
                    ],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              seputarCovid(),
            ],
          ),
        ),
      ),
    );
  }
}
