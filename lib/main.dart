import 'package:flutter/material.dart';
import 'package:test_app_4fresh/my_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(height: 50),
      ),
      debugShowCheckedModeBanner: false,
    );

  }
}



