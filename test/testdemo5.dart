//垂直列表Axis.vertical和ListTile的使用
import 'package:flutter/material.dart';

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
          title: Text(
            'flutter demo',
            style: TextStyle(fontSize: 30, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.vertical, //设置垂直列表
      padding: EdgeInsets.all(20),
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(30), //内容padding
          /*leading: Icon(
            Icons.home, //修改图标
            color: Colors.yellow, //修改图标颜色
            size: 40, //修改图标大小
          ), //加图标 */
          leading: Image.network(//图标可换成图片
              'https://www.sznews.com/news/pic/2020-07/10/995aa43c-22be-4553-8cb2-7b5dd0920c61c1199965-3dea-4a21-8052-369e88d6eb3c.jpg'),
          title: Text('投资近14亿元的深圳“未来校园”迎社会监督 人大代表和市民这么说'),
          subtitle: Text('“未来校园”是啥样？“具有深圳特色、代表中国高度、与国际交流对话”的学校项目该如何建设？'),
          trailing: Image.network(//后置图片
              'https://www.sznews.com/news/pic/2020-07/10/995aa43c-22be-4553-8cb2-7b5dd0920c61c1199965-3dea-4a21-8052-369e88d6eb3c.jpg'),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(30),
          leading: Icon(Icons.search), //加图标
          title: Text('新建面超17万平投资近14亿元 “从来没有看到过这么好的高中”'),
          subtitle: Text('“未来校园”是啥样？“具有深圳特色、代表中国高度、与国际交流对话”的学校项目该如何建设？'),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(30),
          leading: Icon(Icons.search), //加图标
          title: Text('绿色长廊”环绕 深圳首栋15层宿舍引学子感叹“无可超越'),
          subtitle: Text('“未来校园”是啥样？“具有深圳特色、代表中国高度、与国际交流对话”的学校项目该如何建设？'),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(30),
          leading: Icon(Icons.search), //加图标
          title: Text('深圳小斯坦福”对标世界一流 家长感叹：“能进深中很幸福'),
          subtitle: Text('“未来校园”是啥样？“具有深圳特色、代表中国高度、与国际交流对话”的学校项目该如何建设？'),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(30),
          leading: Icon(Icons.search), //加图标
          title: Text('人大代表点赞项目组诸多探索“深圳校园第一次实现互联互通”'),
          subtitle: Text('“未来校园”是啥样？“具有深圳特色、代表中国高度、与国际交流对话”的学校项目该如何建设？'),
        )
      ],
    );
  }
}
