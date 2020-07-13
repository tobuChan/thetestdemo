//自定义位置布局Stack+Positioned
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

//
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Positioned(
              right: 0,
              child: Icon(
                Icons.pages,
                size: 60,
                color: Colors.yellow,
              ),
            )
          ],
        ),
      ),
    );
  }
}
