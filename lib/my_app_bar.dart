import 'package:flutter/material.dart';

//Виджет для настраиваемого AppBar'a.
//Будем использовать в виджете Scaffold в main.dart
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  //определяем конструктор класса, вызывая конструктор родителя
  const MyAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  // метод, возвращающий непосредственно AppBar
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // фон виджета будет белым
      elevation: 0.0,                // тени снизу виджета не будет
      centerTitle: true,             // title располагается по середине
      leading: IconButton(           // перед title располагаем кнопку "Назад"
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 14,
        color: Colors.black,
        onPressed: null,
      ),
      title: Text('Подарки',
          style: TextStyle(
              fontFamily: 'SFProText',     // устанавливаем шрифт, путь к которому прописали в pubspec.yaml
              color: Colors.black,
              fontWeight: FontWeight.bold, // делаем текст жирным
              fontSize: 17.0)),
    );
  }


  //переопределяем высоту виджета
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
