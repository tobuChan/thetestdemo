import 'package:flutter/material.dart';
import '../Search.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            //路由跳转（页面跳转）
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SearchPage(),
            ));
          },
          child: Text('跳转到搜索页面'),
        ),
      ],
    );
  }
}
