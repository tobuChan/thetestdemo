//RaisedButton按钮组件和Wrap流逝布局组件
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
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
        direction: Axis.vertical, //垂直排列
        spacing: 10, //左右间距
        runSpacing: 10, //上下间距
        // alignment: WrapAlignment.end,//尾部对齐
        alignment: WrapAlignment.start, //头部对齐

        children: <Widget>[
          MyButton('第一季'),
          MyButton('第二季第二季第二季'),
          MyButton('第三季'),
          MyButton('第四季'),
          MyButton('第五季第二季第二季'),
          MyButton('第六季'),
          MyButton('第七季第二季'),
          MyButton('第八季'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
