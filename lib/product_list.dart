import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_4fresh/my_text_style.dart';
import 'package:test_app_4fresh/one_product.dart';

// класс для отображения списка товаров

class ProductList extends StatefulWidget {

  final productlist; // список товаров

  // инициализируем список товаров; в зависимости от number, будут формироваться разные списки
  ProductList(int number): productlist = _buildList(number);
  
  @override
  _ProductList createState() => _ProductList();

  // метод, инициализирующий список товаров
  static List<OneProduct> _buildList(int number) {
    List<OneProduct> mylist = List<OneProduct>();
    if (number == 1) {
      mylist.add(OneProduct(
          'Слонж для лица "Konjac"', 'assets/images/konjac.png', false,1));
      mylist.add(OneProduct(
          'Маска-скраб для лица "Lulu Pure"', 'assets/images/lulu.png', false,0));
      mylist.add(OneProduct(
          'Слонж для лица "Konjac"', 'assets/images/konjac.png', false,0));
    }
    if (number == 2) {
      mylist.add(
          OneProduct('Глина косметическая', 'assets/images/clay.png', true,0));
      mylist.add(OneProduct(
          'Пятновыводитель универсальный', 'assets/images/remover.png', true,0));
      mylist.add(OneProduct(
          'Пятновыводитель универсальный', 'assets/images/remover.png', true,0));
    }
    return mylist;
  }
}
class _ProductList extends State<ProductList> {

  // функция увеличения количества товара
  dynamic _incrementCounter(int index) {
    setState(() {
     widget.productlist[index].count++;
    });
  }
  // функция уменьшения количества товара
  dynamic _decrementCounter(int index) {
    setState(() {
      if(widget.productlist[index].count !=0) widget.productlist[index].count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Контейнер для горизонтального ListView
    return Container(
        padding: EdgeInsets.only(left: 16.0),
        height: 170, // ограничиваем высоту контейнера
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[

          // берём описание товаров из списка productlist
          // и методом _buildDetails возвращаем готовые виджеты
        for (var i=0; i<widget.productlist.length; i++)
         _buildDetails(widget.productlist[i],i, context)

        ]));
  }

  // метод, для создания форматированного контейнера с описанием товара
  Widget _buildDetails(OneProduct item, int index,context) {
    var _count = item.count;

    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: Container( // контейнер для всех характеристик товара
            width: MediaQuery.of(context).size.width/2 -20,
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
                  padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container( // контейнер для изображения товара
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(item.ImgPath),
                                    fit: BoxFit.fill))),
                        item.isLogo // контейнер для логотипа
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
                padding: EdgeInsets.only(top: 8.0, left: 10.0, right: 5.0),
                child: Text(item.name, style: MyTextStyle.productDetailsStyle),
              ),

              Row( //строка для кнопок удаления, добавления и количества товаров
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton( // кнопка удаления товара
                      icon: Image.asset('assets/images/ic_del.png'),
                      iconSize: 14,
                      color: Colors.black,
                      onPressed: ()=>_decrementCounter(index)),

                  Text("$_count"), // показывает количество товара

                  IconButton( // кнопка добавления товара
                      icon: Image.asset('assets/images/ic_inc.png'),
                      iconSize: 14,
                      color: Colors.black,
                      onPressed: ()=>_incrementCounter(index)),
                ],
              )
            ])));
  }



}
