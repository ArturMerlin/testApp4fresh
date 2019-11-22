
import 'package:flutter/material.dart';
import 'package:test_app_4fresh/myTextStyle.dart';

class BonusProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 18.0,  bottom:18.0,left: 18.0),
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
                Row(
                  children: <Widget>[
                    Text('1429 Р', style: MyTextStyle.currentPrice),
                    Text(' / 3000 Р', style: MyTextStyle.commonPrice),
                  ],
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