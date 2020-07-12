main() {
//输出
// print('helloworld');

//var变量
//   var str = 'this is a str1';
//   var num = 3.14;
//   print(str);
//   print(num);

//字符串变量 String
  // String str = 'this is a str2';
  // print(str);

//数字类型int
  // int Mynum = 134;           //整型
  // print(Mynum);
  // double mynum = 3.133123;   //双精度浮点型
  // print(mynum);

//常量const
  // const PI = 3.14159;   //修改不了

//常量final 运行前第一次使用才初始化
//   int num = 2020;
//   final a = num;
//   print(a);      //可以成功

//   const PI = num;
//   print(PI);     //不能成功

//数据类型
//字符串类型：字符串拼接
  // String str1 = 'hello';
  // String str2 = 'dart';
  // print('$str1 $str2');
  // print(str1 + " " + str2);

//布尔类型bool
  // bool flag = true;
  // bool flag2 = false;

//条件判断语句
  // bool flag = true;
  // if (flag) {
  //   print('1');
  // } else {
  //   print('2');
  // }

  // if (flag == true) {
  //   print('1');
  // } else {
  //   print('2');
  // }

//数组List
  // var ls1 = ['111', '222', '333'];
  // print(ls1);
  // print(ls1.length);
  // print(ls1[0]);

//定义数组List
  // var ls2 = new List();
  // ls2.add('4444');
  // ls2.add('5555555');
  // print(ls2);

//定义数组指定类型
  // var ls3 = new List<String>();
  // ls3.add('nihao');

//字典Maps
  // var person = {
  //   "name": "张三",
  //   "age": 20,
  //   "work": ['程序员', '外卖员']
  // };
  // print(person);
  // print(person["work"]);

//字典Maps第二种定义方式
  // var p = new Map();
  // p["name"] = "李四";
  // p["age"] = 22;
  // p["work"] = "面包师";
  // print(p);

//is判断数据类型
  // var str = '1232131';
  // if (str is String) {
  //   print('str');
  // } else if (str is int) {
  //   print('int');
  // } else {
  //   print('other');
  // }

//运算符，和其他语言一样，
//取整   ~/

//??=  如果b为空，则34赋给b，否则b为默认值
  // int b = 22;
  // b ??= 34;
  // print(b);

//switch case
  // var sex = "男";
  // switch (sex) {
  //   case "男":
  //     print('性别：男');
  //     break;
  //   case "女":
  //     print("性别：女");
  //     break;
  //   default:
  //     print("传入参数错误");
  //     break;
  // }

// //三目运算符
//   bool flag = true;
//   String c = flag ? '我是true' : '我是false';
//   print(c);

//Number与String的转换
//Number--->String  toString()
  // var myNum = 12;
  // var str = myNum.toString();
  // print(str is String);

//String--->Number  parse()
  // String str = '1111';
  // var myNum = int.parse(str);
  // String str1 = '1111.11';
  // var myNum1 = double.parse(str1); //浮点型用double
  // print(myNum);
  // print(myNum1);

//异常处理
  // String price = '';
  // try {
  //   var myNum = double.parse(price);
  //   print(myNum);
  // } catch (err) {
  //   print(0);
  // }

//isEmpty 判断字符串是否为空
  // var str = '';
  // if (str.isEmpty) {
  //   print('str空');
  // } else {
  //   print('str不为空');
  // }

//isNaN 判断是否为无意义值
  // var myNum = 0 / 0;
  // if (myNum.isNaN) {
  //   print('是NaN');
  // } else {
  //   print('不是NaN');
  // }

//for循环
  // for (int i = 1; i <= 10; i++) {
  //   print(i);
  // }

//打印列表
  List list = ['111', '222', '333'];
  // for (var i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }

//for in 遍历
  // for (var item in list) {
  //   print(item);
  // }

//forEach()遍历
  // list.forEach((value) {
  //   print('$value');
  // });

//map、where、any、every
  // List myList = [1, 3, 4, 5, 6, 7, 8, 9];
//map属性循环遍历
  // var newlist = myList.map((value) {
  //   return value * 2;
  // });
  // print(newlist.toList());

//where属性过滤
  // var newlist = myList.where((value) {
  //   return value > 5;
  // });
  // print(newlist);

//any属性判断   //只要有一个值大于5，便返回true
  // var newlist = myList.any((value) {
  //   return value > 5;
  // });
  // print(newlist);

//every属性判断  //需要所以值都大于5才返回true
  // var newlist = myList.every((value) {
  //   return value > 5;
  // });
  // print(newlist);

//List属性  toList()
  // List mylist = ['111', '222', '3333'];
  // print(mylist.length); //输出列表长度
  // print(mylist.isEmpty); //输出列表是否为空
  // print(mylist.isNotEmpty); //输出列表是否不为空
  // print(mylist.reversed); //对列表进行翻转
  // var newmylist = mylist.reversed.toList();
  // print(newmylist);

//List里面的方法 要调试请先un注释第一条语句
  // List mylist = ['111', '222', '3333'];
//（1）List增加值
  // mylist.add('4444'); //增加一个值
  // mylist.addAll(['555', '666', '777']); //增加多个值
  // print(mylist);

//（2）List获取值的索引值 查找不到返回-1
  // print(mylist.indexOf('ccc'));

//（3）删除remove
  // mylist.remove('bbb');
  // mylist.removeAt(0); //传入索引值
  // print(mylist);

//（4）填充替换fillRange
  // mylist.fillRange(1, 3, 'aaa'); //右边值不包括
  // print(mylist);

//（5）插入insert
  // mylist.insert(1, '999'); //插入单个值
  // mylist.insertAll(2, ['mmm', 'zzz']); //插入多个值
  // print(mylist);

//(6)列表转换为字符串join
  // var str = mylist.join(',');
  // print(str);

//(7)字符串转换列表split
  // var mystr = '你好，我是，寻';
  // var list = mystr.split(',');
  // print(list);

//集合Set,集合不能通过索引去获取值
  // var s = new Set();
  // s.add('香蕉');
  // s.add('苹果');
  // s.add('梨子');
  // print(s);
  // print(s.toList()); //集合转列表

//集合去重
  // List mylist = ['陈', '李', '黄', '李', '黄', '李', '黄', '黄', '黄'];
  // var s = new Set();
  // s.addAll(mylist);
  // print(s);

//字典Map
  //Map person = {"name": '张三', "age": 20};
//字典常用属性
  // print(person.keys.toList()); //获取key
  // print(person.values.toList()); //获取value
  // print(person.isEmpty);
  // print(person.isNotEmpty);

//字典常用方法
//增加值
  // person.addAll({
  //   "work": ['敲代码', '送外卖'],
  //   "height": 170
  // });
  // print(person);

  //删除值
  // person.remove('age');
  // print(person);

  //查看值是否在字典里
  // print(person.containsValue('张三'));
  // print(person.containsKey('name'));
}
