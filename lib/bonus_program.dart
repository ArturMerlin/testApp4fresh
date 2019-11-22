
import 'package:flutter/material.dart';
import 'package:test_app_4fresh/my_text_style.dart';

class BonusProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,

      padding: EdgeInsets.only(
          top: 18.0,  bottom:18.0,left: 18.0, right: 80.0),
      child: Row(
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bonus.png'),
                      fit: BoxFit.fill))),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    text: '1429',
                    style: MyTextStyle.currentPrice, // default text style
                    children: <TextSpan>[
                      TextSpan(
                          text: ' / 3000',
                          style: MyTextStyle.commonPrice),
                    ],
                  ),
                ),
                Text("До бронзового уровня ", style: MyTextStyle.bronzeTextStyle),
              ],
            )

          )
        ],
      ),
    );
}
}