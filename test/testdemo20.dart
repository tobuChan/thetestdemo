////底部导航，切换分页，路由跳转，跳转传值，返回上一页的浮动按钮（Form.dart)
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
