import 'package:flutter/material.dart';
import 'package:test_app_4fresh/bonusProgram.dart';
import 'package:test_app_4fresh/giftImage.dart';
import 'package:test_app_4fresh/myAppBar.dart';
import 'package:test_app_4fresh/myTextStyle.dart';
import 'package:test_app_4fresh/productList.dart';

// виджет, полностью описывающий информацию на экране
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(height: 50),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 5.0, left: 16.0, bottom: 16.0),
              child: Text(
                'Подарки по акциям',
                style: MyTextStyle
                    .headline, //  Содержит TextStyle с заданными параметрами
              ),
            ),

            //ListView с продукцией без лого подарка
            ProductList(1),

            //текст про получения подарков
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
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

            //изображения подарков
            GiftImage(),

            // текст
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 16.0),
              child: Text(
                'За сумму заказа',
                style: MyTextStyle
                    .headline, //  Содержит TextStyle с заданными параметрами
              ),
            ),

            //текст
            Padding(
              padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Text(
                  "Чем больше заказ, тем БОЛЬШЕ подарков вы можете выбрать! ",
                  style: MyTextStyle.usualTextStyle),
            ),

            // бонусная программа
            BonusProgram(),

            //ListView с продукцией с лого подарка
            ProductList(2),

            // пустой отступ
            SizedBox(
              height: 58.0,
            )
          ],
        ));
  }
}
