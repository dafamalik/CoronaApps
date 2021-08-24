import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:corona_apps/feature/home/view/tesCovidView.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var dataSeputarCovid = [
    {"image": "asset/image/beritaCovid.jpg"},
    {"image": "asset/image/beritaUpdateCovid.jpg"},
    {"image": "asset/image/beritaVaksin.jpg"},
    {"image": "asset/image/beritaWHO.jpg"}
  ];

  void gotoTesCovid() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => TesCovidView()));
  }

  Widget appBar() {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selamat Pagi, Dafa",
            style: TextStyle(
                color: ColorConfig.colorWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Container(
            width: 308,
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Jangan lupa untuk mematuhi protokol kesehatan dan tetap menjaga 5M yah",
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConfig.colorWhite,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
        height: 509,
        decoration: BoxDecoration(
            color: ColorConfig.colorBackground,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              top: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Image(
                  image: AssetImage("asset/image/headerHome.png"),
                  width: MediaQuery.of(context).size.width,
                  height: 179,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 40,
                left: 16,
                child: appBar()),
            Positioned(
              top: 135,
              left: 16,
              right: 16,
              child: Container(
                height: 85,
                width: 317,
                padding: EdgeInsets.all(8),
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
                      child: Image(
                        image: AssetImage("asset/image/coronaVirusGreen.png"),
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pengecekan Covid-19 Mandiri",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorConfig.colorBlack,
                                    fontWeight: FontWeight.bold)),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(top: 8),
                              child: Text(
                                  "Berisi daftar pertanyaan untuk memeriksa kondisi Anda",
                                  maxLines: 2,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorConfig.colorGrey)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                        iconSize: 17,
                        color: ColorConfig.colorGreenPrimary,
                        icon: Icon(Icons.navigate_next),
                        onPressed: () => {this.gotoTesCovid()}),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 240,
              left: 16,
              right: 16,
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
                            child: Text(
                              "Update terakhir 31 Juli 2021 - 08:16 WIB",
                              style: TextStyle(
                                  color: ColorConfig.colorGrey,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Text("")),
                    Container(
                      height: 34,
                      decoration: BoxDecoration(
                        color: ColorConfig.colorWhite,
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: IconButton(
                          iconSize: 17,
                          color: ColorConfig.colorGreenPrimary,
                          icon: Icon(Icons.navigate_next),
                          onPressed: () => {print("press")}),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 290,
              left: 16,
              right: 16,
              child: Container(
                height: 40,
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: ColorConfig.colorWhite,
                  borderRadius: BorderRadius.circular(8),
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
                      child: Image(
                        image: AssetImage("asset/image/indo.png"),
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
                                fontSize: 14)),
                      ),
                    ),
                    IconButton(
                        iconSize: 17,
                        color: ColorConfig.colorGrey,
                        icon: Icon(Icons.keyboard_arrow_down_sharp),
                        onPressed: () => {print("press")}),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 25,
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
          ],
        ));
  }

  Widget seputarCovid() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
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
                        child: Text(
                          "Menyajikan berita terkini seputar Covid-19",
                          style: TextStyle(
                              color: ColorConfig.colorGrey,
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child: Text("")),
                TextButton(
                    onPressed: () => {},
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                          color: ColorConfig.colorGreenPrimary,
                          fontSize: 12),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bannerCovid() {
    return Container(
        height: 150,
        margin: EdgeInsets.only(top: 24, left: 16),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dataSeputarCovid.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 8),
                width: 298,
                height: 158,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(dataSeputarCovid[index]["image"]))),
              );
            }));
  }

  Widget question() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Sering Ditanyakan",
                            style: TextStyle(
                              color: ColorConfig.colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Text("")),
                TextButton(
                    onPressed: () => {},
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                          color: ColorConfig.colorGreenPrimary,
                          fontSize: 12),
                    )),
              ],
            ),
          ),
          Container(
            height: 77,
            decoration: BoxDecoration(
                color: ColorConfig.colorBackground,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorGreenPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Text(
                          "Apa itu virus Corona?",
                          style: TextStyle(
                              color: ColorConfig.colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 8),
                        child: Text(
                          "ini isi",
                          style: TextStyle(
                              color: ColorConfig.colorBlack, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    iconSize: 26,
                    color: ColorConfig.colorGrey,
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    onPressed: () => {print("press")}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            height: 77,
            decoration: BoxDecoration(
                color: ColorConfig.colorBackground,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorGreenPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Text(
                          "Apa itu virus Corona?",
                          style: TextStyle(
                              color: ColorConfig.colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 8),
                        child: Text(
                          "ini isi",
                          style: TextStyle(
                              color: ColorConfig.colorBlack, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    iconSize: 26,
                    color: ColorConfig.colorGrey,
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    onPressed: () => {print("press")}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            height: 77,
            decoration: BoxDecoration(
                color: ColorConfig.colorBackground,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                      color: ColorConfig.colorGreenPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Text(
                          "Apa itu virus Corona?",
                          style: TextStyle(
                              color: ColorConfig.colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 8),
                        child: Text(
                          "ini isi",
                          style: TextStyle(
                              color: ColorConfig.colorBlack, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    iconSize: 26,
                    color: ColorConfig.colorGrey,
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    onPressed: () => {print("press")}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget edukasiWidget() {
    return Container(
        height: 610,
        margin: EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Text(
                "Edukasi Covid-19",
                style: TextStyle(
                    color: ColorConfig.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Image(
                      image: AssetImage("asset/image/edukasi1.png"),
                      height: 86,
                      width: 86),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            "Pengantar Adaptasi Kebiasaan Baru",
                            maxLines: 3,
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 14,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text("5 jam yang lalu")),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("asset/image/edukasi2.png"),
                    height: 86,
                    width: 86,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            "Panduan Kesehatan Jiwa Di Masa Pandemi - Satgas Penanganan Covid-19",
                            maxLines: 3,
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 14,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text("5 jam yang lalu")),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("asset/image/edukasi3.png"),
                    height: 86,
                    width: 86,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            "Menghidupkan Percakapan Positif yang Memberdayakan di Ruang Keluarga",
                            maxLines: 3,
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 14,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text("5 jam yang lalu")),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("asset/image/edukasi4.png"),
                    height: 86,
                    width: 86,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            "Pemimpin Empati di Masa Pandemic COVID-19",
                            maxLines: 3,
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 14,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text("5 jam yang lalu")),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("asset/image/edukasi5.png"),
                    height: 86,
                    width: 86,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            "Memaafkan Membuat Sehat Jiwa dan Raga",
                            maxLines: 3,
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 14,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text("5 jam yang lalu")),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget motivasiWidget() {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Motivasi Dari Penyintas Covid-19",
              style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          Expanded(
            child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    height: 230,
                    width: 248,
                    child: Column(
                      children: [
                        Container(
                          height: 146,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:
                                      AssetImage("asset/image/motivasi1.png"),
                                  fit: BoxFit.contain)),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: ColorConfig.colorButtonPlay,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.play_arrow,
                                color: ColorConfig.colorWhite,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Text(
                            "Ibu Rahmi Berhasil Sembuh Dari Covid-19 Dengan Tekad Kuat Dala...",
                            maxLines: 2,
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  width: 56,
                                  height: 23,
                                  margin: EdgeInsets.only(top: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConfig.colorGreenPrimary),
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorConfig.colorBackground,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Video",
                                      style: TextStyle(
                                        color: ColorConfig.colorGreenPrimary,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 16),
                    height: 230,
                    width: 248,
                    child: Column(
                      children: [
                        Container(
                          height: 146,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:
                                      AssetImage("asset/image/motivasi1.png"),
                                  fit: BoxFit.contain)),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: ColorConfig.colorButtonPlay,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.play_arrow,
                                color: ColorConfig.colorWhite,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Text(
                            "Ibu Rahmi Berhasil Sembuh Dari Covid-19 Dengan Tekad Kuat Dala...",
                            maxLines: 2,
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  width: 56,
                                  height: 23,
                                  margin: EdgeInsets.only(top: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConfig.colorGreenPrimary),
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorConfig.colorBackground,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Video",
                                      style: TextStyle(
                                        color: ColorConfig.colorGreenPrimary,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 16),
                    height: 230,
                    width: 248,
                    child: Column(
                      children: [
                        Container(
                          height: 146,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:
                                      AssetImage("asset/image/motivasi1.png"),
                                  fit: BoxFit.contain)),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: ColorConfig.colorButtonPlay,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.play_arrow,
                                color: ColorConfig.colorWhite,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Text(
                            "Ibu Rahmi Berhasil Sembuh Dari Covid-19 Dengan Tekad Kuat Dala...",
                            maxLines: 2,
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  width: 56,
                                  height: 23,
                                  margin: EdgeInsets.only(top: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConfig.colorGreenPrimary),
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorConfig.colorBackground,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Video",
                                      style: TextStyle(
                                        color: ColorConfig.colorGreenPrimary,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
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
      body: Container(
        color: ColorConfig.colorWhite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              seputarCovid(),
              bannerCovid(),
              question(),
              edukasiWidget(),
              motivasiWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
