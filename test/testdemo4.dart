//实现圆角图片+本地图片的引入
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
      //第一种实现圆型图片的方法
      //   width: 300.0,
      //   height: 300.0,
      //   decoration: BoxDecoration(
      //       color: Colors.yellow,
      //       // borderRadius: BorderRadius.all(Radius.circular(150))
      //       borderRadius: BorderRadius.circular(150),
      //       image: DecorationImage(
      //         image: NetworkImage(
      //             'https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1594993204&t=722ad5e1c5702df4716afb84127e3c09'),
      //         fit: BoxFit.cover,
      //       )),
      //第二种实现圆形图片的方法
      //         child: ClipOval(
      //   child: Image.network(
      //     'https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1594993204&t=722ad5e1c5702df4716afb84127e3c09',
      //     width: 100,
      //     height: 100,
      //     fit: BoxFit.cover,
      //   ),
      // )
      //引入本地图片，（1）把图片放进images文件夹的2.0,3.0,4.0（2）添加到pubspec.yaml的assets
      child: Image.asset(
        'images/a.jpg',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    ));
  }
}
