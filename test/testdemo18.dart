//有状态组件StatefulWidget和setData()方法
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

//有状态组件StatefulWidget
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Chip(
          label: Text('${this.countNum}'),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              //只有有状态组件有这个方法
              this.countNum++;
            });
          },
          child: Text('按钮'),
        )
      ],
    );
  }
}
