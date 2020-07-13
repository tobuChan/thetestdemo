//Card图文列表练习
import 'package:flutter/material.dart';
import 'package:flutter_app/res/listData.dart';

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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                /*
                leading: ClipOval(
                    child: Image.network(
                  'https://www.itying.com/images/flutter/2.png',
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                )),*/
                leading: CircleAvatar(
                  //专门处理头像的函数
                  backgroundImage: NetworkImage(
                      'https://www.itying.com/images/flutter/2.png'),
                ),
                title: Text('Carlos'),
                subtitle: Text('高级工程师'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/3.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                    child: Image.network(
                  'https://www.itying.com/images/flutter/4.png',
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                )),
                title: Text('tobu'),
                subtitle: Text('软件工程师'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/5.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                    child: Image.network(
                  'https://www.itying.com/images/flutter/6.png',
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                )),
                title: Text('GodKnows'),
                subtitle: Text('程序员'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/7.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                    child: Image.network(
                  'https://www.itying.com/images/flutter/6.png',
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                )),
                title: Text('Hitomi'),
                subtitle: Text('歌手'),
              )
            ],
          ),
        )
      ],
    );
  }
}
