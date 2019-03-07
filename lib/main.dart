import 'package:flutter/material.dart';
// import 'bottom_nav.dart'; //常规底部导航
// import 'bottom_app_bar.dart'; // 不规则底部导航
// import 'pages.dart'; //动态路由动画效果
import 'frosted_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "flutter BottomNavigationBar",
       // 自定义主题样本
      // theme: ThemeData.light(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue  // 主题色
      ),
      // home: BottomNavigationWidget(),
      // home: FirstPage(), //动态路由动画效果
      home: FrostedPage(), //磨砂玻璃动画效果
    );
  }
}