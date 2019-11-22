import 'package:flutter/material.dart';
import 'package:test_app_4fresh/bonus_program.dart';
import 'package:test_app_4fresh/gift_image.dart';
import 'package:test_app_4fresh/my_app_bar.dart';
import 'package:test_app_4fresh/my_text_style.dart';
import 'package:test_app_4fresh/product_list.dart';

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


              ProductList(1),

              Padding(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 5.0, left: 16.0, right: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                        text: 'Вы можете получить ещё',
                        style: MyTextStyle.usualTextStyle, // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: ' 9 подарков.',
                              style: MyTextStyle.usualBoldTextStyle),
                        ],
                      ),
                    ),
                    Text(
                      'Узнайте, что нужно сделать',
                      style: MyTextStyle.usualTextStyle,
                    )
                  ],
                ),
              ),
              GiftImage(),
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 16.0),
                child: Text(
                  'За сумму заказа',
                  style: MyTextStyle
                      .headline, //  Содержит TextStyle с заданными параметрами
                ),
              ),

              Wrap(alignment: WrapAlignment.start, children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 16.0, right: 5.0),
                  child: Text(
                      "Чем больше заказ, тем БОЛЬШЕ подарков вы можете выбрать! ",
                    style: MyTextStyle.usualTextStyle),
                ),
              ]),

              BonusProgram(),

              ProductList(2)
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }



}
