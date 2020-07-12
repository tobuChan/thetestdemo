//动态列表
import 'package:flutter/material.dart';
import 'package:flutter_app/res/listData.dart';

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
          title: Text('fluttr demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class HomeContent extends StatelessWidget {
  //自定义方法
  // List<Widget> _getData() {
  //   List<Widget> list = new List();
  //   for (var i = 0; i < 20; i++) {
  //     list.add(ListTile(
  //       title: Text('我是$i个列表'),
  //     ));
  //   }
  //   return list;
  // }
  //引入外部数据(动态列表)
  List<Widget> _getData() {
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value['imageUrl']),
        title: Text(value['title']),
        subtitle: Text(value['author']),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: this._getData());
  }
}
