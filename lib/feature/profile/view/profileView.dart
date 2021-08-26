import 'package:corona_apps/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.colorBackground,
      body: Container(
        margin: EdgeInsets.only(top: 45),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Profil saya",
                  style: TextStyle(
                      color: ColorConfig.colorBlack,
                      fontSize: 18,
                      fontFamily: 'NunitoBold'
                  )),
              Container(
                  width: 109,
                  height: 156,
                  margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: ColorConfig.colorWhite,
                        width: 8,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: ColorConfig.colorProfileBackground,
                  ),
                  child: Center(
                      child: Image(
                        image: AssetImage("asset/image/unknownUser.png"),
                        width: 80,
                        height: 80,
                      )
                  )),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Text("Hai, Pengunjung",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 18,
                  fontFamily: 'NunitoBold'
                ))),
              Container(
                height: 40,
                width: 157,
                margin: EdgeInsets.only(top: 45),
                decoration: BoxDecoration(
                  color: ColorConfig.colorGreenPrimary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: FlatButton(
                    onPressed: () => {},
                    child: Text("Daftar Sekarang",
                      style: TextStyle(
                        color: ColorConfig.colorWhite,
                        fontFamily: 'NunitoSemiBold',
                        fontSize: 14,
                      ),)),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Text("atau Anda mau daftar dengan",
                style: TextStyle(
                  color: ColorConfig.colorGrey,
                  fontSize: 14,
                  fontFamily: 'NunitoRegular'
                ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    padding: EdgeInsets.all(8),
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      color: ColorConfig.colorWhite,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () => {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("asset/image/googleIcon.png"),
                          width: 17,
                            height: 17,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text("Google",
                              style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontSize: 14,
                                fontFamily: 'NunitoRegular'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 24, left: 8),
                      padding: EdgeInsets.all(8),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        color: ColorConfig.colorWhite,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () => {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("asset/image/faceBookIcon.png"),
                              width: 17,
                              height: 17,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Text("Facebook",
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontSize: 14,
                                    fontFamily: 'NunitoRegular'
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Anda sudah Punya akun ?",
                    style: TextStyle(
                      color: ColorConfig.colorGrey,
                      fontSize: 14,
                      fontFamily: 'NunitoRegular'
                    )),
                    TextButton(
                        onPressed: () => {},
                        child: Text("Ayo Masuk",
                        style: TextStyle(
                          color: ColorConfig.colorGreenPrimary,
                          fontSize: 14,
                          fontFamily: 'NunitoSemiBold'
                        ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
