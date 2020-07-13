//改变页面数据
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
        body: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
            children: this.list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList()),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              this.list.add('新增数据1');
              this.list.add('新增数据2');
            });
          },
          child: Text('按钮'),
        )
      ],
    );
  }
}
