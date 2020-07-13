//布局练习
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
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  height: 180,
                  color: Colors.black,
                  child: Container(
                    padding: EdgeInsets.all(50),
                    child: Text(
                      '你好，Flutter',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                  )),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
                height: 180,
                child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(width: 10), //大图片和两个小图片之间的间距
          Expanded(
              flex: 1,
              child: Container(
                  height: 180,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 85,
                        child: Image.network(
                          'https://www.itying.com/images/flutter/2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10), //两个小图片之间的间距
                      Container(
                        height: 85,
                        child: Image.network(
                          'https://www.itying.com/images/flutter/3.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  )))
        ])
      ],
    );
  }
}
