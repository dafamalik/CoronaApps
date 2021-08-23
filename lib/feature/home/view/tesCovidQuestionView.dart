import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TesCovidQuestionView extends StatefulWidget {

  @override
  _TesCovidQuestionViewState createState() => _TesCovidQuestionViewState();
}

class _TesCovidQuestionViewState extends State<TesCovidQuestionView> {

  Widget appBar() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 25,
            icon: Icon(Icons.arrow_back_ios),
              onPressed: () => {}),
          Row(
            children: [
              Image(image: AssetImage("asset/image/coronaVirusWhite.png")),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [

              ],
            ),
          ),
        ));
  }
}
