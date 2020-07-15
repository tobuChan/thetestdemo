//practice01,登录页设计，未实现：输入文本框，页面切换，按钮事件，水平线
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
        body: HomePage(),
      ),
      theme: ThemeData(primaryColor: Color.fromARGB(255, 221, 221, 221)),
    );
  }
}

//
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 221, 221, 221),
        child: Column(
          children: <Widget>[
            Container(
              width: 400,
              height: 220,
              alignment: Alignment.bottomCenter,
              child: Text(
                'TOBUTOBU',
                style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(255, 103, 145, 219),
                    fontStyle: FontStyle.italic),
              ),
            ), //title
            SizedBox(height: 50),
            Container(
                width: 350,
                alignment: Alignment.center,
                //padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                child: Card(
                  color: Color.fromARGB(255, 221, 221, 221),
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Row(
                            //验证码登录和密码登录
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {},
                                child: Text(
                                  '验证码登录',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text('|'),
                              SizedBox(
                                width: 30,
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text(
                                  '密码登录',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          //验证码登录和密码登录
                          children: <Widget>[
                            Icon(
                              Icons.phone,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '请输入手机号码',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text('|'),
                            SizedBox(
                              width: 20,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                '发送验证码',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 103, 145, 219),
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        //验证码输入框
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '请输入验证码',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        //登录按钮
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('登录',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          color: Color.fromARGB(255, 103, 145, 219),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )), //main box
            Container(
              height: 80,
              alignment: Alignment.center,
              child: Text(
                '忘记密码',
                style: TextStyle(
                    color: Color.fromARGB(255, 103, 145, 219),
                    fontWeight: FontWeight.bold),
              ),
            ), //pw
            SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    '第三方账号登录',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ClipOval(
                    child: Image.network(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594726789167&di=e36ca654be12f5d7091fd0364fab3184&imgtype=0&src=http%3A%2F%2Ftc.sinaimg.cn%2Fmaxwidth.2048%2Ftc.service.weibo.com%2Fp1_pstatp_com%2F57619eb96c53c0f566ca951db6e006b7.jpg',
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                  )
                ],
              ),
            ), //wechat
          ],
        ));
  }
}
