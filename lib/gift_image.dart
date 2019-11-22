import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// класс для показа подарочных изображений:
// Container с горизонтальным ListView,
// Элементы ListView являются Container,
// через свойство decoration задаём контейнеру изображение
class GiftImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
       padding: EdgeInsets.only(left:8.0,top: 13.0),
        height: 125,
        child:
        ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildImage('assets/images/gift.png',context),
              _buildImage('assets/images/gift.png',context)
            ]));
  }

//Создание контейнера с изображением
  Widget _buildImage(String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(
              left: 8.0),
        child: Container(
          width: 320,
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
