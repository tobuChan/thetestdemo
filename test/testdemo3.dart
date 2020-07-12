//引入远程图片，和图片的一些属性。
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
    return Center(
        child: Container(
      child: Image.network(
        //载入远程图片
        'https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1594993204&t=722ad5e1c5702df4716afb84127e3c09',
        alignment: Alignment.center,
        //color: Colors.yellow, //设置图片颜色，直接覆盖
        //colorBlendMode: BlendMode.luminosity, //混合颜色
        fit: BoxFit.cover, //充满图片不变形，但会裁剪，放大
        //fit: BoxFit.fill, //充满图片会变形，拉伸
        //repeat: ImageRepeat.repeatX,//重复
      ),
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(color: Colors.yellow),
    ));
  }
}
