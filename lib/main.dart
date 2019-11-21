import 'package:flutter/material.dart';
import 'package:test_app_4fresh/gift_image.dart';
import 'package:test_app_4fresh/my_app_bar.dart';
import 'package:test_app_4fresh/my_text_style.dart';
import 'package:test_app_4fresh/product.dart';

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
                  style: MyTextStyle
                      .headline, //  Содержит TextStyle с заданными параметрами
                ),
              ),
              SizedBox(height: 10.0),
              Product(),
              Padding(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 5.0, left: 15.0, right: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                        text: 'Вы можете получить ещё',
                        style: TextStyle(
                            fontFamily: 'SFProText',
                            color: Colors.black,
                            fontSize: 15.0), // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: ' 9 подарков.',
                              style: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15.0)),
                        ],
                      ),
                    ),
                    Text('Узнайте, что нужно сделать',style: TextStyle(
                        fontFamily: 'SFProText',
                        color: Colors.black,
                        fontSize: 15.0),)
                  ],
                ),
              ),
              GiftImage(),
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
