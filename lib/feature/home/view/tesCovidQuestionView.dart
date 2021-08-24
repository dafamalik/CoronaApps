import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:corona_apps/feature/home/view/hasilTesview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TesCovidQuestionView extends StatefulWidget {

  @override
  _TesCovidQuestionViewState createState() => _TesCovidQuestionViewState();
}

class _TesCovidQuestionViewState extends State<TesCovidQuestionView> {

  void gotoTesCovid() {
    Navigator.of(context).pop();
  }

  void gotoHasilTes() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HasilTesView())
    );
  }

  Widget appBar() {
    return Container(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 25,
            color: ColorConfig.colorWhite,
            icon: Icon(Icons.arrow_back_ios),
              onPressed: () => {this.gotoTesCovid()}),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Row(
              children: [
                Image(image: AssetImage("asset/image/coronaVirusWhite.png"),
                width: 79,
                  height: 79,
                ),
                Container(
                  width: 250,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      Text("Terdapat 10 pertanyaan yang harus Anda jawab",
                      maxLines: 2,
                      style: TextStyle(
                        color: ColorConfig.colorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text("Pilih jawaban yang sesuai dengan kondisi Anda yah",
                          maxLines: 2,
                          style: TextStyle(
                            color: ColorConfig.colorWhite,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget header () {
    return Container(
      height: 210,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image(image: AssetImage("asset/image/headerHome.png"),
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

  Widget content () {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: ListView(
        children: [
          Container(
            child: Text("Gejala yang Dialami",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: ColorConfig.colorBlack,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 1",
                    style: TextStyle(
                      color: ColorConfig.colorGreenPrimary,
                      fontSize: 12,
                    ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Apakah Anda mengalami demam dengan suhu di atas 38 derajat Celcius ?",
                    style: TextStyle(
                      color: ColorConfig.colorBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 2",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Apakah saat ini Anda merasakan demam ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 3",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Apakah saat ini Anda merasakan batuk / pilek ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 4",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Apakah saat ini Anda mengalami nyeri tenggorokan ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 5",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Apakah saat ini Anda merasakan sulit untuk bernafas / sesak nafas ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 6",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Apakah saat inni Anda merasakan kehilangan indra penciuman dan rasa ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 7",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Apakah gejala yang Anda alami kurang dari 14 hari ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text("Riwayat Kontak",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 8",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Memiliki riwayat kontak erat dengan penderita terkonfirmasi Covid-19 ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text("Riwayat Mobilitas",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 9",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Memiliki riwayat perjalanan atau tinggal diluar negeri yang melakukan penularan lokal ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 10",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Memiliki riwayat perjalanan atau tinggal diarea penularan lokal di Indonesia ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 148,
            width: 317,
            margin: EdgeInsets.only(top: 24),
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
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pertanyaan 11",
                      style: TextStyle(
                        color: ColorConfig.colorGreenPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Memiliki riwayat berkerumun atau berkumpul dalam suatu aktivitas ?",
                      style: TextStyle(
                          color: ColorConfig.colorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorGreenPrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("Tidak")},
                              child: Text("Ya",
                                style: TextStyle(
                                  color: ColorConfig.colorWhite,
                                  fontSize: 14,
                                ),)),
                        ),
                        Container(
                          height: 35,
                          width: 136,
                          margin: EdgeInsets.only(top: 16, left: 8),
                          decoration: BoxDecoration(
                            color: ColorConfig.colorWhite,
                            border: Border.all(color: ColorConfig.colorGreenPrimary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlatButton(
                              onPressed: () => {print("ya")},
                              child: Text("Tidak",
                                style: TextStyle(
                                  color: ColorConfig.colorGreenPrimary,
                                  fontSize: 14,
                                ),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 16, bottom: 16),
            decoration: BoxDecoration(
              color: ColorConfig.colorGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: FlatButton(
                onPressed: () => {this.gotoHasilTes()},
                child: Text("Lihat Hasil Pengecekan",
                  style: TextStyle(
                    color: ColorConfig.colorWhite,
                    fontSize: 14,
                  ),)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.colorBackground,
        body: Container(
            child: Column(
              children: [
                header(),
                Expanded(child: content())
              ],
            ),
        ));
  }
}
