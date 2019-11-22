import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_4fresh/my_text_style.dart';
import 'package:test_app_4fresh/one_product.dart';

// класс для отображения списка товаров
class ProductList extends StatelessWidget {
  List<OneProduct> productlist; // список товаров

  // инициализируем список товаров; в зависимости от number, будут формироваться разные списки
  ProductList(int number) {
    this.productlist = _buildList(number);
  }

  @override
  Widget build(BuildContext context) {
    // Контейнер для горизонтального ListView
    return Container(
        padding: EdgeInsets.only(left: 16.0),
        //width: MediaQuery.of(context).size.width - 20.0,
        height: 170, // ограничиваем высоту контейнера
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          //for (var item in productlist) // берём описание товаров из списка productlist
          // и методом _buildDetails возвращаем готовые виджеты
          //  _buildDetails(item.name, item.ImgPath, item.isLogo, context)
        for (var i=0; i<productlist.length; i++)
         _buildDetails(productlist[i].name, productlist[i].ImgPath, productlist[i].isLogo, context)

        ]));
  }

  // метод, для создания форматированного контейнера с описанием товара
  Widget _buildDetails(String name, String imgPath, bool isLogo, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: Container( // контейнер для всех характеристик товара
            width: 150.0,
            height: MediaQuery.of(context).size.height - 50.0,
            decoration: BoxDecoration(  // задаём форму контейнеру
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1.0,
                      blurRadius: 4.0)
                ],
                color: Colors.white),

            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 5.0, right: 15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container( // контейнер для изображения товара
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.fill))),
                        isLogo // контейнер для логотипа
                            ? Padding(
                                padding: EdgeInsets.only(bottom: 30.0),
                                child: Container(
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo.png'),
                                            fit: BoxFit.fill))),
                              )
                            : Text("")
                      ])),

              Container(  // контейнер для наименования товара
                height: 40.0,
                width: 150.0,
                padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 5.0),
                child: Text(name, style: MyTextStyle.productDetailsStyle),
              ),

              Row( //строка для кнопок удаления, добавления и количества товаров
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton( // кнопка удаления товара
                      icon: Image.asset('assets/images/ic_del.png'),
                      iconSize: 14,
                      color: Colors.black,
                      onPressed: null),
                  Text("0"), // показывает количество товара
                  IconButton( // кнопка добавления товара
                      icon: Image.asset('assets/images/ic_inc.png'),
                      iconSize: 14,
                      color: Colors.black,
                      onPressed: null),
                ],
              )
            ])));
  }

  // метод, инициализирующий список товаров
  List<OneProduct> _buildList(int number) {
    List<OneProduct> mylist = List<OneProduct>();
    if (number == 1) {
      mylist.add(OneProduct(
          'Слонж для лица "Konjac"', 'assets/images/konjac.png', false));
      mylist.add(OneProduct(
          'Маска-скраб для лица "Lulu Pure"', 'assets/images/lulu.png', false));
      mylist.add(OneProduct(
          'Слонж для лица "Konjac"', 'assets/images/konjac.png', false));
    }
    if (number == 2) {
      mylist.add(
          OneProduct('Глина косметическая', 'assets/images/clay.png', true));
      mylist.add(OneProduct(
          'Пятновыводитель универсальный', 'assets/images/remover.png', true));
      mylist.add(OneProduct(
          'Пятновыводитель универсальный', 'assets/images/remover.png', true));
    }
    return mylist;
  }
}
