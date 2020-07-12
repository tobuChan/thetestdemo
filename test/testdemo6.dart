//水平列表的使用Axis.horizontal
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'flutter demo',
            style: TextStyle(fontSize: 30, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 180, //设置高度，下面的Container就不用设置，会自适应
      child: ListView(
        scrollDirection: Axis.horizontal, //设置水平列表
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.red,
            child: ListView(
              children: <Widget>[
                Image.network('https://www.itying.com/images/flutter/1.png'),
                Text('我是一个文本')
              ],
            ),
          ),
          Container(width: 180.0, color: Colors.blue),
          Container(width: 180.0, color: Colors.yellow),
          Container(width: 180.0, color: Colors.black),
          Container(width: 180.0, color: Colors.orange),
          Container(width: 180.0, color: Colors.green),
        ],
      ),
    );
  }
}
