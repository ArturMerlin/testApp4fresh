import 'package:flutter/material.dart';

//класс стилей текста
class MyTextStyle {

  //стиль для заголовка
  static const headline = TextStyle(
      fontFamily: 'SFProDisplay',
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 21.0);

  //стиль для наименования товара
  static const productDetailsStyle = TextStyle(
      fontFamily: 'SFProText',
      color: Colors.black,
      fontSize: 13.0);

  //стиль для обычного текста на экране
  static const usualTextStyle = TextStyle(
      fontFamily: 'SFProText',
      color: Colors.black,
      fontSize: 14.5);

  //стиль для жирного обычного текста на экране
  static const usualBoldTextStyle = TextStyle(
      fontFamily: 'SFProText',
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14.5);

  // стиль для текста бронзового уровня
  static const bronzeTextStyle = TextStyle(
      fontFamily: 'SFProText',
      color: Color.fromRGBO(223, 178, 141, 1.0),
      fontWeight: FontWeight.bold,
      fontSize: 17.0);

  static const currentPrice = TextStyle(
      fontFamily: 'SFProText',
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18.0);

  static const commonPrice = TextStyle(
      fontFamily: 'SFProText',
      color: Color.fromRGBO(160, 164, 173, 1.0),
      fontWeight: FontWeight.normal,
      fontSize: 13.0);

}
