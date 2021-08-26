import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:corona_apps/config/helper/converterHelper.dart';
import 'package:corona_apps/config/helper/timeAgoHelper.dart';
import 'package:corona_apps/feature/detailNews/view/detailNews.dart';
import 'package:corona_apps/feature/home/model/staticticModel.dart';
import 'package:corona_apps/feature/home/service/homeService.dart';
import 'package:corona_apps/feature/home/view/tesCovidView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webfeed/domain/rss_feed.dart';
import 'package:webfeed/domain/rss_item.dart';
import 'package:intl/date_symbol_data_local.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var service = HomeService();

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
  
  void gotoDetailNews(String url) {

    Future.delayed(Duration(milliseconds: 500),() {

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DetailNewsView(url: url,)));
    });

  }

  @override
  void initState() {

    initializeDateFormatting();

    super.initState();
  }

  Widget locationDialog(BuildContext context) {
    return AlertDialog(
      title: Text("Pilih Lokasi"),
      content: Container(
        height: 500,
        child: ListView.builder(
          itemCount: 40,
          itemBuilder: (ctx, idx) {

            return Container(
              height: 50,
                child: Text("Tesss")
            );
          },
        ),
      ),
    );
  }

  Widget appBar() {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selamat Pagi Sahabat Sehat",
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
            Positioned(top: 40, left: 16, child: appBar()),
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
                                  color: ColorConfig.colorGrey, fontSize: 12),
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
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                      onTap: ()=> {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => locationDialog(context),
                        )
                      },
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
                                    color: ColorConfig.colorBlack, fontSize: 14)),
                          ),
                        ),
                        IconButton(
                            iconSize: 17,
                            color: ColorConfig.colorGrey,
                            icon: Icon(Icons.keyboard_arrow_down_sharp),
                            onPressed: () => {
                                 showDialog(
                                     context: context,
                                       builder: (BuildContext context) => locationDialog(context),
                                 )
                            }
                            ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 16,
              right: 16,
              child: StreamBuilder(
                stream: service.getDataTotalCovid().asStream(),
                builder: (context, AsyncSnapshot<StatisticModel> snapshoot) {
                  if (snapshoot.hasData) {
                    return Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 128,
                            width: 93,
                            padding:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: ColorConfig.colorWhite,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
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
                                  child: Text(ConverterHelper.stringToDouble(snapshoot.data.positif),
                                      style: TextStyle(
                                          color:
                                              ColorConfig.colorIconTerinfeksi,
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
                            padding:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            margin: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                              color: ColorConfig.colorWhite,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
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
                                  child: Text(ConverterHelper.stringToDouble(snapshoot.data.sembuh),
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
                            padding:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: ColorConfig.colorWhite,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
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
                                  child: Text(ConverterHelper.stringToDouble(snapshoot.data.meninggal),
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
                    );
                  } else if (snapshoot.hasError) {
                    return Container(
                      child: Center(
                        child: Text(snapshoot.error.toString()),
                      ),
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
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
                              color: ColorConfig.colorGrey, fontSize: 12),
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
                          color: ColorConfig.colorGreenPrimary, fontSize: 12),
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
        height: 160,
        margin: EdgeInsets.only(top: 24, left: 16),
        child: StreamBuilder(
          stream: service.getLatestNews().asStream(),
          builder: (context, AsyncSnapshot<RssFeed> snapshoot) {

            if(snapshoot.hasData) {

              var itemsList = snapshoot.data.items;

              return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 8),
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(itemsList[index].enclosure.url)
                          ),
                        ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => {gotoDetailNews(itemsList[index].link)},
                              child: Container(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                    child: Container(
                                      color: Colors.black.withOpacity(0.2),
                                      padding: EdgeInsets.all(16),
                                        child: Text(itemsList[index].title, maxLines: 2,style: TextStyle(
                                          fontSize: 14,
                                          color: ColorConfig.colorWhite,
                                          fontWeight: FontWeight.bold
                                        ))
                                    )
                                ),
                              ),
                            ),
                          ),
                        );
                      });
            } else if(snapshoot.hasError){

              return Container(
                child: Center(
                  child: Text(snapshoot.error.toString(), style: TextStyle(
                      color: Colors.black
                  )),
                ),
              );
            }

            return Container();
          },
        )
    );
  }

  Widget question() {
    return Container(
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
                          color: ColorConfig.colorGreenPrimary, fontSize: 12),
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                color: ColorConfig.colorBackground,
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 8,
                    decoration: BoxDecoration(
                        color: ColorConfig.colorGreenPrimary,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),

                  ),
                  top: 0,
                  bottom: 0,
                  left: 0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: ExpansionTile(
                              initiallyExpanded: true,
                              title: Text(
                                "Apa itu virus Corona?",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ), children: [
                              Container(
                                margin: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                                child: Text(
                                  "Virus Corona atau severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) adalah virus yang menyerang sistem pernapasan. Penyakit karena infeksi virus ini disebut COVID-19. Virus Corona bisa menyebabkan gangguan ringan pada sistem pernapasan, infeksi paru-paru yang berat, hingga kematian.",
                                  style: TextStyle(
                                      color: ColorConfig.colorBlack, fontSize: 14),
                                ),
                              ),
                            ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                color: ColorConfig.colorBackground,
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 8,
                    decoration: BoxDecoration(
                        color: ColorConfig.colorGreenPrimary,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),

                  ),
                  top: 0,
                  bottom: 0,
                  left: 0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: ExpansionTile(
                              title: Text(
                                "Bagaimana gejala yang timbul bila terinfeksi?",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ), children: [
                              Container(
                                margin: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                                child: Text(
                                  "Virus Corona atau severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) adalah virus yang menyerang sistem pernapasan. Penyakit karena infeksi virus ini disebut COVID-19. Virus Corona bisa menyebabkan gangguan ringan pada sistem pernapasan, infeksi paru-paru yang berat, hingga kematian.",
                                  style: TextStyle(
                                      color: ColorConfig.colorBlack, fontSize: 14),
                                ),
                              ),
                            ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                color: ColorConfig.colorBackground,
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 8,
                    decoration: BoxDecoration(
                        color: ColorConfig.colorGreenPrimary,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),

                  ),
                  top: 0,
                  bottom: 0,
                  left: 0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: ExpansionTile(
                              title: Text(
                                "Bagaimana penanganan untuk pasien yang terinfeksi virus Corona?",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ), children: [
                              Container(
                                margin: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                                child: Text(
                                  "Virus Corona atau severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) adalah virus yang menyerang sistem pernapasan. Penyakit karena infeksi virus ini disebut COVID-19. Virus Corona bisa menyebabkan gangguan ringan pada sistem pernapasan, infeksi paru-paru yang berat, hingga kematian.",
                                  style: TextStyle(
                                      color: ColorConfig.colorBlack, fontSize: 14),
                                ),
                              ),
                            ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 24),
              child: Text(
                "Edukasi Covid-19",
                style: TextStyle(
                    color: ColorConfig.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: StreamBuilder(
                stream: service.getEducationNews().asStream(),
                builder: (context, AsyncSnapshot<List<RssItem>> snapshoot){

                  if(snapshoot.hasData) {

                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (ctx, idx) {

                        return Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => {gotoDetailNews(snapshoot.data[idx].link)},
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: Image(
                                        image: NetworkImage(snapshoot.data[idx].enclosure.url),
                                        height: 86,
                                        width: 86),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 8, right: 8),
                                          child: Text(snapshoot.data[idx].title,
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
                                                  child: Text(TimeAgo.timeAgoSinceDate(snapshoot.data[idx].pubDate)
                                                  ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else if(snapshoot.hasError) {

                    return Container(
                      child: Center(
                        child: Text(snapshoot.error.toString()),
                      ),
                    );
                  }

                  return Container();
                },
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
