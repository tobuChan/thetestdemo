//卡片Card
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
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

//
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：xxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxx'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '李四',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：xxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxx'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '王五',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：xxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxx'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
