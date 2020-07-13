//（动态）Card图文动态列表
import 'package:flutter/material.dart';
import 'package:flutter_app/res/listData.dart';

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
    return ListView(
        children: listData.map((value) {
      return Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                value['imageUrl'],
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: ClipOval(
                  child: Image.network(
                value['imageUrl'],
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              )),
              title: Text(value['title']),
              subtitle: Text(
                value['description'],
                overflow: TextOverflow.ellipsis, //如果文本过长，会有点点点。
              ),
            )
          ],
        ),
      );
    }).toList());
  }
}
