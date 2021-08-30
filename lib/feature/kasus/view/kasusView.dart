import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:corona_apps/config/helper/converterHelper.dart';
import 'package:corona_apps/feature/home/model/locationModel.dart';
import 'package:corona_apps/feature/home/model/staticticModel.dart';
import 'package:corona_apps/feature/home/service/homeService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KasusView extends StatefulWidget {

  @override
  _KasusViewState createState() => _KasusViewState();
}

class _KasusViewState extends State<KasusView> {

  var location = "Indonesia";
  var service = HomeService();
  String caseType = "aktif";

  var dataKasusTerbanyak = [
    {"image": "asset/image/backgroundKasusTerbanyak.png"},
    {"image": "asset/image/backgroundKasusTerbanyak.png"},
    {"image": "asset/image/backgroundKasusTerbanyak.png"},
    {"image": "asset/image/backgroundKasusTerbanyak.png"}
  ];

  var dataVaksin =[
    {"image": "asset/image/vaksinBanner.png"},
    {"image": "asset/image/vaksinBanner.png"},
    {"image": "asset/image/vaksinBanner.png"},
    {"image": "asset/image/vaksinBanner.png"},
  ];

  void selectLocation(String selectedLocation) {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        location = selectedLocation;
      });

      Navigator.pop(context);
    });
  }

  void selectCase(String type) {
    setState(() {
      caseType = type;
    });
    print(caseType);
  }

  Widget showDetailCase(BuildContext context, String type, String lokasi,
      String jumlah) {

    showDialog(
        context: context,
        builder: (builder) =>
            Dialog(
              insetPadding: EdgeInsets.only(
                  left: 16, right: 16, top: 16, bottom: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                height: MediaQuery
                    .of(context)
                    .size
                    .height / (5 / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 16, left: 16),
                          child: Image(
                            height: 60,
                            width: 60,
                            image: AssetImage(type == "Terinfeksi"
                                ? "asset/image/coronaVirusYellow.png"
                                : type == "Sembuh"
                                ? "asset/image/sembuh.png"
                                : "asset/image/kematian.png"),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Total Kasus " + type, style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "NunitoBold"
                              )),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Image(
                                        image: AssetImage(
                                            "asset/image/indo.png"),
                                        width: 19,
                                        height: 19,
                                      ),
                                    ),
                                    Text(lokasi)
                                  ])
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      margin: EdgeInsets.all(8),
                      color: Colors.grey[200],
                    ),
                    Container(
                        padding: EdgeInsets.all(8),
                        child: Text("Jumlah",
                          style: TextStyle(
                              color: ColorConfig.colorGrey,
                              fontSize: 12,
                              fontFamily: 'NunitoRegular'
                          ),)),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text(jumlah, style: TextStyle(
                          fontSize: 36,
                          fontFamily: "NunitoBold",
                          color: Color(
                              type == "Terinfeksi" ? 0XFFF2A01C : type ==
                                  "Sembuh" ? 0XFF15AB2D : 0XFFCA0B0B)
                      )),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 116,
                          height: 40,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0XFF7C7C7C), width: 1)
                          ),
                          child: FlatButton(
                              onPressed: () =>
                              {
                                Navigator.pop(context)
                              },
                              child: Text("Tutup",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontSize: 14,
                                    fontFamily: 'NunitoRegular'
                                ),
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
    );
  }

  Widget locationDialog(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: Container(
        padding: EdgeInsets.all(8),
        height: MediaQuery
            .of(context)
            .size
            .height / (4 / 3),
        child: Column(
          children: [
            Text("Pilih Lokasi"),
            Container(
                height: 50,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () =>
                    {
                      selectLocation("Indonesia")
                    },
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Indonesia")
                    ),
                  ),
                )
            ),
            Expanded(
              child: StreamBuilder(
                stream: service.getLocations().asStream(),
                builder: (context,
                    AsyncSnapshot<List<LocationModel>> snapshoot) {
                  if (snapshoot.hasData) {
                    return ListView.builder(
                      itemCount: snapshoot.data.length,
                      itemBuilder: (ctx, idx) {
                        return Container(
                            height: 50,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () =>
                                {
                                  selectLocation(
                                      snapshoot.data[idx].attributes.provinsi)
                                },
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        snapshoot.data[idx].attributes.provinsi)
                                ),
                              ),
                            )
                        );
                      },
                    );
                  } else if (snapshoot.hasError) {
                    return Container(
                      child: Center(
                        child: Text(snapshoot.error.toString()),
                      ),
                    );
                  }

                  return Container(
                    child: Center(
                      child: Text("mengunduh lokasi ..."),
                    ),
                  );
                },
              ),
            ),
          ],
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
          Text("Update Terbaru Covid-19",
            style: TextStyle(
                color: ColorConfig.colorWhite,
                fontSize: 18,
                fontFamily: 'NunitoBold'
            ),),
          Container(
            width: 320,
            margin: EdgeInsets.only(top: 10),
            child: Text("Update terakhir 31 Juli 2021 - 08:16 WIB",
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConfig.colorWhite,
                fontFamily: 'NunitoRegular',
                fontSize: 14,
              ),),
          )
        ],
      ),
    );
  }

  Widget header() {
    return Container(
        height: 370,
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
                    onTap: () =>
                    {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            locationDialog(context),
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
                            child: Text(location,
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontFamily: 'NunitoRegular',
                                    fontSize: 14)),
                          ),
                        ),
                        IconButton(
                            iconSize: 17,
                            color: ColorConfig.colorGrey,
                            icon: Icon(Icons.keyboard_arrow_down_sharp),
                            onPressed: () =>
                            {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    locationDialog(context),
                              )
                            }
                        ),
                      ],
                    ),
                  ),
                ),
              ),),
            Positioned(
              top: 190,
              left: 16,
              right: 16,
              child: location == "Indonesia" ? StreamBuilder(
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
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () =>
                                {
                                  showDetailCase(
                                      context, "Terinfeksi", location,
                                      snapshoot.data.positif)
                                },
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
                                              fontFamily: "NunitoRegular",
                                              fontSize: 12)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                          ConverterHelper.stringToDouble(
                                              snapshoot.data.positif),
                                          style: TextStyle(
                                              color:
                                              ColorConfig.colorIconTerinfeksi,
                                              fontSize: 14,
                                              fontFamily: "NunitoBold")),
                                    )
                                  ],
                                ),
                              ),
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
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () =>
                                {

                                  showDetailCase(context, "Sembuh", location,
                                      snapshoot.data.sembuh)
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            "asset/image/sembuh.png"),
                                        width: 36,
                                        height: 36),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("Sembuh",
                                          style: TextStyle(
                                              color: ColorConfig.colorBlack,
                                              fontFamily: "NunitoRegular",
                                              fontSize: 12)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                          ConverterHelper.stringToDouble(
                                              snapshoot.data.sembuh),
                                          style: TextStyle(
                                              color: ColorConfig
                                                  .colorGreenPrimary,
                                              fontSize: 14,
                                              fontFamily: "NunitoBold")),
                                    )
                                  ],
                                ),
                              ),
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
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () =>
                                {
                                  showDetailCase(context, "Meninggal", location,
                                      snapshoot.data.meninggal)
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "asset/image/kematian.png"),
                                      width: 36,
                                      height: 36,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("Meninggal",
                                          style: TextStyle(
                                              color: ColorConfig.colorBlack,
                                              fontFamily: "NunitoRegular",
                                              fontSize: 12)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                          ConverterHelper.stringToDouble(
                                              snapshoot.data.meninggal),
                                          style: TextStyle(
                                              color: ColorConfig
                                                  .colorIconKematian,
                                              fontSize: 14,
                                              fontFamily: "NunitoBold")),
                                    )
                                  ],
                                ),
                              ),
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

                  return Container(
                    child: Center(
                      child: Text("mengunduh data ..."),
                    ),
                  );
                },
              ) :
              StreamBuilder(
                stream: service.getLocations().asStream(),
                builder: (context,
                    AsyncSnapshot<List<LocationModel>> snapshoot) {
                  if (snapshoot.hasData) {
                    var filteredLocation = snapshoot.data
                        .where((element) =>
                    element.attributes.provinsi == location)
                        .first;

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
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () =>
                                {
                                  showDetailCase(
                                      context, "Terinfeksi", location,
                                      filteredLocation.attributes.kasusPosi
                                          .toString())
                                },
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
                                              fontFamily: "NunitoRegular",
                                              fontSize: 12)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                          ConverterHelper.stringToDouble(
                                              filteredLocation.attributes
                                                  .kasusPosi.toString()),
                                          style: TextStyle(
                                              color:
                                              ColorConfig.colorIconTerinfeksi,
                                              fontSize: 14,
                                              fontFamily: "NunitoBold")),
                                    ),
                                  ],
                                ),
                              ),
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
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () =>
                                {
                                  showDetailCase(context, "Sembuh", location,
                                      filteredLocation.attributes.kasusSemb
                                          .toString())
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            "asset/image/sembuh.png"),
                                        width: 36,
                                        height: 36),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("Sembuh",
                                          style: TextStyle(
                                              color: ColorConfig.colorBlack,
                                              fontFamily: "NunitoRegular",
                                              fontSize: 12)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                          ConverterHelper.stringToDouble(
                                              filteredLocation.attributes
                                                  .kasusSemb.toString()),
                                          style: TextStyle(
                                              color: ColorConfig
                                                  .colorGreenPrimary,
                                              fontSize: 14,
                                              fontFamily: "NunitoBold")),
                                    )
                                  ],
                                ),
                              ),
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
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () =>
                                {
                                  showDetailCase(context, "Meninggal", location,
                                      filteredLocation.attributes.kasusMeni
                                          .toString())
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "asset/image/kematian.png"),
                                      width: 36,
                                      height: 36,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("Meninggal",
                                          style: TextStyle(
                                              color: ColorConfig.colorBlack,
                                              fontFamily: "NunitoRegular",
                                              fontSize: 12)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                          ConverterHelper.stringToDouble(
                                              filteredLocation.attributes
                                                  .kasusMeni.toString()),
                                          style: TextStyle(
                                              color: ColorConfig
                                                  .colorIconKematian,
                                              fontSize: 14,
                                              fontFamily: "NunitoBold")),
                                    )
                                  ],
                                ),
                              ),
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

                  return Container(
                    child: Center(
                      child: Text("mengunduh data ..."),
                    ),
                  );
                },
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
                            color: caseType == "aktif" ? ColorConfig.colorIconTerinfeksi : ColorConfig.colorTransparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: FlatButton(onPressed: () => {selectCase("aktif")},
                            child: Text("Kasus Aktif",
                              style: TextStyle(
                                  color: caseType == "aktif" ? ColorConfig.colorWhite : ColorConfig.colorBlack,
                                fontFamily: 'NunitoSemiBold',
                                fontSize: 14,
                              ),),
                          )),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: caseType == "sembuh" ? ColorConfig.colorGreenPrimary : ColorConfig.colorTransparent,
                            borderRadius: BorderRadius.circular(20)
                          ),
                            child: FlatButton(onPressed: () => {selectCase("sembuh")},
                              child: Text("Sembuh",
                                style: TextStyle(
                                    color: caseType == "sembuh" ? ColorConfig.colorWhite : ColorConfig.colorBlack,
                                  fontFamily: 'NunitoSemiBold',
                                  fontSize: 14,
                                ),),
                            )),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: caseType == "meninggal" ? ColorConfig.colorIconKematian : ColorConfig.colorTransparent,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: FlatButton(onPressed: () => {selectCase("meninggal")},
                            child: Text("Meninggal",
                              style: TextStyle(
                                  color: caseType == "meninggal" ? ColorConfig.colorWhite : ColorConfig.colorBlack,
                                fontFamily: 'NunitoSemiBold',
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
                              fontFamily: 'NunitoBold',
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
                          fontFamily: 'NunitoRegular',
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
        child: StreamBuilder(
          stream: service.getLocations().asStream(),
          builder: (context,
              AsyncSnapshot<List<LocationModel>> snapshoot) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshoot.data.length,
                itemBuilder: (context, index) {
              return Container(
                  height: 127,
                  width: 184,
                  margin: EdgeInsets.only(left: 16),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          child: Image(
                            image: AssetImage("asset/image/backgroundKasusTerbanyak.png"),
                            height: 127,
                            width: 184,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 16,
                          left: 16,
                          child: Column(
                            children: [
                              Text(snapshoot.data[index].attributes.provinsi,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: ColorConfig.colorBlack,
                                    fontFamily: 'NunitoBold'
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                child: Text("Terinfeksi",
                                style: TextStyle(
                                  color: ColorConfig.colorBlack,
                                  fontSize: 12,
                                  fontFamily: 'NunitoRegular'
                                ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                child: Text(snapshoot.data[index].attributes.kasusPosi.toString(),
                                  style: TextStyle(
                                    color: ColorConfig.colorIconTerinfeksi,
                                    fontSize: 14,
                                    fontFamily: 'NunitoBold'
                                  ),
                                ),
                              )
                            ],
                          )
                      )
                    ],
                  ));
          });
          }
        ));
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
                          fontFamily: 'NunitoBold',
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
                        image: AssetImage(dataVaksin[index]["image"])
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
              bannervaksin()
            ],
          ),
        ),
      ),
    );
  }
}
