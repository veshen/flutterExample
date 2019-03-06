import 'package:flutter/material.dart';
// import 'bottom_nav.dart'; //常规底部导航
import 'bottom_app_bar.dart'; // 不规则底部导航

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "flutter BottomNavigationBar",
       // 自定义主题样本
      // theme: ThemeData.light(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      // home: BottomNavigationWidget(),
      home: BottomAppBarDemo(), //自定义不规则底部导航
    );
  }
}