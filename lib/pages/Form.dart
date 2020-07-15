import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title = '表单'});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          //浮动按钮
          onPressed: () {
            Navigator.of(context).pop(); //返回上一页
          },
          child: Text('返回'),
        ),
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('我是表单页面'),
            ),
            ListTile(
              title: Text('我是表单页面'),
            ),
            ListTile(
              title: Text('我是表单页面'),
            ),
            ListTile(
              title: Text('我是表单页面'),
            ),
          ],
        ),
      ),
    );
  }
}
