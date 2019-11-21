import 'package:flutter/material.dart';
import 'package:test_app_4fresh/my_app_bar.dart';
import 'package:test_app_4fresh/my_text_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: MyAppBar(height: 50),
          backgroundColor: Colors.white,
          body: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 5.0, left: 16.0),
                child: Text(
                  'Подарки по акциям',
                  style: MyTextStyle.headline, //  Содержит TextStyle с заданными параметрами
                ),
              ),
              SizedBox(height: 10.0),
            ],
          )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
