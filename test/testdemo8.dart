//GridView组件动态显示
import 'package:flutter/material.dart';
import 'res/listData.dart';

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
        body: LayoutDemo(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Image.network(
              value['imageUrl'],
              fit: BoxFit.cover,
            ),
            Text(
              value['title'],
              style: TextStyle(fontSize: 30, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        crossAxisSpacing: 10.0, //容器左右的间距
        mainAxisSpacing: 10.0, //容器上下的间距
        padding: EdgeInsets.all(10),
        //  childAspectRatio: 0.7, //调整宽度和高度的比例
        crossAxisCount: 2, //一行Widget的数量
        children: this._getListData());
  }
}

//
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[],
    );
  }
}
