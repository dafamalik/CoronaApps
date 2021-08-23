import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class BeritaCovidView extends StatefulWidget {

  @override
  _BeritaCovidViewState createState() => _BeritaCovidViewState();
}

class _BeritaCovidViewState extends State<BeritaCovidView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 24,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.4, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Image(
          image: AssetImage("asset/image/beritaWHO.jpg"),
        ),
        builder: (context, state) {
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height-80,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 16),
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorConfig.colorBackground,
                              ),
                              child: FlatButton(
                                minWidth: 100,
                                height: 40,
                                onPressed: () {
                                  setState(() {

                                  });
                                },
                                child: Text(
                                  "Video",
                                  style: TextStyle(
                                    color: ColorConfig.colorGreenPrimary,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text("")),
                            Container(
                              margin: EdgeInsets.only(right: 16, top: 16),
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorConfig.colorGrey,
                              ),
                              child: FlatButton(
                                minWidth: 100,
                                height: 40,
                                onPressed: () {
                                  setState(() {

                                  });
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.remove_red_eye_outlined),
                                      Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: Text(
                                          "287",
                                          style: TextStyle(
                                            color: ColorConfig.colorBlack,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16,left: 21,right: 21),
                        child: Text("Pandemi Covid-19 di Jakarta dilaporkan mulai melandai dengan rata-rata penambahan kasus tidak lebih dari 2.000 per hari, Angka ini perlahan turun setelah menyentuh puncaknya pada 12 Juli lalu dengan penambahan kasus harian sebesar 14.619, sebagaimana tertulis di laman. Dengan penurunan kasus ini, jumlah RT zona merah yang memiliki risiko penularan tinggi pun berkurang. Data Pemerintah Provinsi (Pemprov) DKI memperlihatkan, saat ini tersisa 38 RT saja yang masuk ke dalam kriteria zona merah.", textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                )
              ),
              Container(
                height: 1000,
                  color: ColorConfig.colorBackgroundBerita,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 16,left: 21,right: 21),
                          child: Text("Berita Terkait")),
                      Container(
                        margin: EdgeInsets.only(top: 16,left: 21,right: 21),
                        child: Row(
                          children: [
                            Image(image: AssetImage("asset/image/beritaCovid.jpg"),
                            fit: BoxFit.contain,
                            width: 30,)
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          );
        },
      ),
    );
  }
}
