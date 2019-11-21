import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_4fresh/my_text_style.dart';

class GiftImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.only(right: 15.0),
        height: 140,
        child:
        ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildImage('assets/images/gift.png',context),
              _buildImage('assets/images/gift.png',context)
            ]));
  }

  Widget _buildImage(String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(
            top: 20.0, bottom: 5.0, left: 15.0, right: 5.0),
        child: Container(
          width: MediaQuery.of(context).size.width - 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.5,
                  blurRadius: 3.0),
            ],
              image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.fill),
          ),

        ),

    );
  }
}
