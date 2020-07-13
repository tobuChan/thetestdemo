//自定义位置布局Stack+Align
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
            Align(
              alignment: Alignment(1, 0.2), //利用这个来控制方位
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.center,
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
