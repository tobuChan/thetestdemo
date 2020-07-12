//定义函数（方法）
// void printinfo() {
//   print('我是一个自定义方法');
// }

//[]可选参数
// String printUserInfo(String username, [int age]) {
//   if (age != null) {
//     return '姓名：$username----年龄：$age';
//   } else {
//     return '姓名：$username----年龄：保密';
//   }
// }

//默认参数
// String printUserInfo(String username, [int age, String sex = '男']) {
//   if (age != null) {
//     return '姓名：$username----年龄：$age-----性别：$sex';
//   } else {
//     return '姓名：$username----年龄：保密-----性别：$sex';
//   }
// }

// void main() {
//   print(printUserInfo('carlo'));
//   print(printUserInfo('carlo', 50));
//   print(printUserInfo('carlo', 50, '女'));
//   //命名参数
//   print(printUserInfo('张三', 20, '女'));
// }
// }

//-----------------------------------------------

// //箭头函数
// void main() {
//   List myList = [1, 3, 6];

//   //遍历打印列表的值(1)
//   // myList.forEach((value) {
//   //   print(value);
//   // });

//   //遍历打印列表的值(2)--利用箭头函数
//   // myList.forEach((element) => print(element)); //箭头后面只能写一句话
//   // var newmylist = myList.map((value) => value > 2 ? value * 2 : value);
//   // print(newmylist);

// //自执行函数
// void main() {
//   (() {
//     print('我是自执行函数');
//   })();
// }

//---------------------------------------------------
//自定义类
// class Person {
//   //属性
//   String name = "张三";
//   int age = 20;
//   String sex = "男";

//   //方法（函数）
//   void getInfo() {
//     print('姓名:$name--年龄:$age--性别:$sex');
//     print('姓名:${this.name}--年龄:${this.age}--性别:${this.sex}');
//   }

//   void setInfo(int age) {
//     this.age = age;
//   }

//默认构造函数(1)
// Person() {
//   print('这是构造函数里面的内容，这个方法会在实例化的时候触发');
// }

//默认构造函数(2)
//   Person(this.name, this.age, this.sex);
//   void printInfo() {
//     print('${this.name}---${this.age}----${this.sex}');
//   }

//命名构造函数
//   Person.now() {
//     print('我是命名构造函数');
//   }
// }

// void main() {
//实例化
// var p1 = new Person();
//Person p1 = new Person();
// print(p1.name);
// p1.setInfo(29);
// p1.getInfo();

//默认构造函数(2)call
// Person p1 = new Person('张三', 12, '男');
// p1.printInfo();

//命名构造函数
// Person p1 = new Person.now();
// }

//---------------------------------------------------
//使用正常函数调用
// class Rect {
//   num height;
//   num width;
//   Rect(this.height, this.width);
//   area() {
//     return this.height * this.width;
//   }
// }

// void main() {
//   Rect r = new Rect(10, 4);
//   print('面积：${r.area()}');
// }

//使用getter
// class Rect {
//   num height;
//   num width;
//   Rect(this.height, this.width);
//   get area {
//     return this.height * this.width;
//   }
// }

// void main() {
//   Rect r = new Rect(10, 4);
//   print('面积：${r.area}'); //调用直接访问属性的方式访问area
// }

// 使用setter
// class Rect {
//   num height;
//   num width;
//   Rect(this.height, this.width);
//   get area {
//     return this.height * this.width;
//   }

//   set areaHeight(value) {
//     this.height = value;
//   }
// }

// void main() {
//   Rect r = new Rect(10, 4);
//   r.areaHeight = 6;
//   print(r.area);
// }

//-----------------------------------------
//static静态成员和静态方法
// class Person {
//   static String name = "张三";
//   int age = 20;
//   static void show() {
//     print(name);
//   }

//   void printInfo() {
//     //非静态方法可以访问静态成员和非静态成员
//     print(name); //访问静态成员
//     print(this.age); //访问非静态成员
//     show(); //调用静态方法
//   }

//   static void printUserInfo() {
//     print(name); //调用静态属性（成员）
//     show(); //调用静态方法
//     //print(this.age);  //静态方法没法调用非静态属性和非静态方法
//   }
// }

// void main() {
//因为类定义的属性和方法为静态，所以不用实例化，可以直接调用
// print(Person.name);
// Person.show();

//访问非静态方法需要实例化
// Person p1 = new Person();
// p1.printInfo();

// Person.printUserInfo();
// }

//-----------------------------------------------------------------
//对象操作符
//static静态成员和静态方法
// class Person {
//   String name = "张三";
//   int age = 20;
//   Person(this.name, this.age);
//   void show() {
//     print("${this.name}-----${this.age}");
//   }
// }

// void main() {
// Person p = new Person('张三', 20);
// p.show();
// p.name = '李四';
// p.age = 40;
// p.show();

//连缀..
// Person p = new Person('张三', 20);
// p.show();

// p
//   ..name = "李四"
//   ..age = 20
//   ..show();
// }

//-------------------------------------------------------
//继承extends
// class Person {
//   String name;
//   int age;
//   Person(this.name, this.age);
//   void show() {
//     print("${this.name}-----${this.age}");
//   }
// }

// class Web extends Person {
//   String sex;
//   Web(String name, int age, String sex) : super(name, age) {
//     this.sex = sex;
//   }
//   run() {
//     print("${this.name}-----${this.age}-------${this.sex}");
//   }
// }

// main() {
//   // Person p = new Person('李四', 24);
//   // p.show();
//   // Person p1 = new Person('张三', 20);
//   // p1.show();

//   Web w = new Web('李四', 23, '男');
//   w.run();
// }

//-------------------------------------------------------------
//重写父类
// class Person {
//   String name;
//   int age;
//   Person(this.name, this.age);
//   void show() {
//     print("${this.name}-----${this.age}");
//   }

//   void work() {
//     print('I am working');
//   }
// }

// class Web extends Person {
//   Web(String name, int age) : super(name, age);
//   run() {
//     print('run');
//     //子类调用父类方法
//     super.work();
//   }

// //重写父类的方法
//   @override
//   void show() {
//     print("姓名：${this.name}-----年龄：${this.age}");
//   }
// }

// main() {
//   Web w = new Web('张三', 23);
//   w.run();
// }

//-------------------------------------------------------
//抽象类abstract  在抽象父类中写的方法，子类继承后必须要重写父类的方法，抽象类主要是为了约束子类的行为。
// abstract class Animal {
//   eat(); //抽象方法
//   run(); //抽象方法
// }

// class Dog extends Animal {
//   @override
//   eat() {
//     print('小狗在吃饭');
//   }

//   @override
//   run() {
//     print('小狗在跑');
//   }
// }

// class Cat extends Animal {
//   @override
//   eat() {
//     print('小猫在吃饭');
//   }

//   @override
//   run() {
//     print('小猫在跑');
//   }
// }

// void main() {
//   Dog d = new Dog();
//   d.eat();
//   d.run();
//   Cat c = new Cat();
//   c.eat();
//   c.run();
// }

//-------------------------------------------------------------
//多态   父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现
// abstract class Animal {
//   eat(); //抽象方法
// }

// class Dog extends Animal {
//   @override
//   eat() {
//     print('小狗在吃饭');
//   }
// }

// class Cat extends Animal {
//   @override
//   eat() {
//     print('小猫在吃饭');
//   }
// }

// void main() {
//   Dog d = new Dog();
//   d.eat();
//   Cat c = new Cat();
//   c.eat();
// }

//------------------------------------------------------------------
//接口  一般会使用抽象类来当做接口
// abstract class Db {
//   //当做接口,就是约定，规范
//   String uri; //数据库的链接地址
//   add(String data);
//   save();
//   del();
// }

// class Mysql implements Db {
//   @override
//   String uri;

//   Mysql(this.uri);

//   @override
//   add(String data) {
//     print('这是Mysql的add方法' + data);
//   }

//   @override
//   del() {
//     print('这是Mysql的del方法');
//   }

//   @override
//   save() {
//     print('这是Mysql的save方法');
//   }
// }

// class MsSql implements Db {
//   @override
//   String uri;

//   @override
//   add(String data) {
//     print('这是Mysql的add方法' + data);
//   }

//   @override
//   del() {
//     // TODO: implement del
//     throw UnimplementedError();
//   }

//   @override
//   save() {
//     // TODO: implement save
//     throw UnimplementedError();
//   }
// }

// main() {
//   Mysql mysql = new Mysql('uri:xxxxxxx');
//   mysql.add('123453232');
// }

//接口2 类已抽离
// import 'Mysql.dart';
// import 'MsSql.dart';

// main() {
//   Mysql mysql = new Mysql('xxxx');
//   mysql.add('23123123');

//   MsSql msSql = new MsSql();
//   msSql.add('213123');
// }

//接口3 一个类实现多个接口
// import 'dart:async';

// abstract class A {
//   String name;
//   printA();
// }

// abstract class B {
//   printB();
// }

// class C implements A, B {
//   @override
//   String name;

//   @override
//   printA() {
//     print('print A');
//   }

//   @override
//   printB() {
//     print('print B');
//   }
// }

// main() {
//   C c = new C();
//   c.printA();
//   c.printB();
// }

//mixins类似多继承
// class Person {
//   String name;
//   num age;
//   Person(this.name, this.age);
//   printInfo() {
//     print('${this.name}----${this.age}');
//   }
// }

// class A {
//   void printA() {
//     print('A');
//   }
// }

// class B {
//   void printB() {
//     print('B');
//   }
// }

// class C extends Person with A, B {
//   C(String name, num age) : super(name, age);
// }

// main() {
//   C c = new C('Carlos', 20);
//   c.printA();
//   c.printB();
//   c.printInfo();
// }

//---------------------------------------------------------------
//泛型T 传入什么数据类型，就返回什么类型
// T getDate<T>(T value) {
//   return value;
// }

// void main() {
//   print(getDate(21));
//   print(getDate('xxxxx'));
//   print(getDate<String>('abc')); //传参时可以指定类型

//   List list = new List<String>(); //这样写的话，列表只能增加String类型的值
// }

//泛型类
// class PrintClass<T> {
//   List list = new List<T>();
//   void addnum(T value) {
//     this.list.add(value);
//   }

//   void printInfo() {
//     for (var i = 0; i < this.list.length; i++) {
//       print(this.list[i]);
//     }
//   }
// }

// main() {
//   PrintClass p = new PrintClass();
//   p.addnum(3);
//   p.addnum(2);
//   p.addnum('xxxx');
//   p.printInfo();

//   PrintClass p1 = new PrintClass<String>(); //p1实例只能传入String类型
//   //指定String类型，实例化后上面所有指定T类型的变量和方法都会变成String类型。
// }

//--------------------------------------------------------------------------
//自定义库、系统内置库、第三方库pub
//(1)自定义库引入
// import 'Db.dart';

//(2)系统内置库引入
//import 'dart:io';
// import 'dart:math';

// main() {
//   print(min(23, 2321));
// }

//(3)第三方库
/*
1、从下面地址找到要用的库
    https://pub.dev/packages
    https://pub.flutter-io.cn/packages
    https://pub.dartlang.org/flutter/

2、创建一个pubspec.yaml文件，内容如下
    name:xx
    description:A new flutter module project.
    dependencies:
      http:^0.12.0+2
      date_format:^1.0.6

3、配置dependencies

4、cmd在项目的位置，然后运行 pub get

5、看文档入库使用

 */
