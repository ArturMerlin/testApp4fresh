import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 15.0),
        width: MediaQuery.of(context).size.width - 30.0,
        height: 160,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          _buildDetails(
              'Слонж для лица "Konjac"',  'assets/images/konjac.png',  false, context),
          _buildDetails(
              'Маска-скраб для лица "Lulu Pure"',  'assets/images/lulu.png',  false, context),
          _buildDetails(
              'Слонж для лица "Konjac"',  'assets/images/remover.png',  false, context),
        ]));
  }

  Widget _buildDetails(String name,  String imgPath, bool isLogo, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: Container(
            width: 160.0,
            height: MediaQuery.of(context).size.height - 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1.0,
                      blurRadius: 4.0)
                ],
                color: Colors.white),
            child: Column(children: [
              SizedBox(height: 5.0),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.fill))),
                        isLogo
                            ? Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('assets/images/logo.png'),
                                            fit: BoxFit.fill))),
                              )
                            : Text("")
                      ])),
              Container(
                height: 35.0,
                width: 150.0,
                padding: EdgeInsets.only(right: 4.0),
                child: Text(name,
                    style: TextStyle(
                        color: Color(0xFF575E67),
                        fontFamily: 'Varela',
                        fontSize: 14.0)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      icon: Image.asset('assets/images/ic_del.png'),
                      iconSize: 14,
                      color: Colors.black,
                      onPressed: null),
                  Text("0"),
                  IconButton(
                      icon: Image.asset('assets/images/ic_inc.png'),
                      iconSize: 14,
                      color: Colors.black,
                      onPressed: null),
                ],
              )
            ])));
  }
}
