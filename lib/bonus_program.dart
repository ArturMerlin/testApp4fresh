
import 'package:flutter/material.dart';
import 'package:test_app_4fresh/my_text_style.dart';

class BonusProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 20.0, bottom: 15.0, left: 16.0, right: 5.0),
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
            padding: EdgeInsets.only(left: 30.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("1429 / 3000 "),
                Text("До бронзового уровня ", style: MyTextStyle.bronzeTextStyle),
              ],
            )

          )
        ],
      ),
    );
}
}