//一些属性操作
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

//MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

//HomeContent
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: Text(
        '你好，flutter你好，flutter你好，flutter你好，flutter你好，flutter你好，flutter',
        style: TextStyle(
          fontSize: 10, //字体大小
          color: Colors.red, //字体颜色
          fontWeight: FontWeight.w800, //字体厚度
          fontStyle: FontStyle.italic, //字体风格
          decoration: TextDecoration.lineThrough, //一条线从文本穿过
          decorationColor: Colors.brown, //穿过的线的颜色
          decorationStyle: TextDecorationStyle.dashed, //穿过的线的风格，如虚线
          letterSpacing: 5.0, //文字间距
          //wordSpacing: 2.0, //单词间距
        ),
        textAlign: TextAlign.left, //文本排列
        overflow: TextOverflow.ellipsis, //定义文本溢出
        maxLines: 1, //maxline可定义文本显示几行
        textScaleFactor: 2, //字体放大
      ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(20), //设置边框圆角
            // Radius.circular(150)时方框变成一个圆
          )),
      // padding: EdgeInsets.all(10), //每一边的内边距padding
      padding: EdgeInsets.fromLTRB(10, 30, 5, 0), //设置不同的内边距
      margin: EdgeInsets.fromLTRB(10, 30, 5, 0), //设置外边距
      // transform: Matrix4.translationValues(100, 0, 0),//容器移动
      // transform: Matrix4.rotationZ(0.3), //旋转
      alignment: Alignment.topLeft, //文字移动
    ));
  }
}
