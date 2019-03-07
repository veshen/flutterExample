import 'package:flutter/material.dart';
import 'dart:ui'; // 图片过滤器必须使用
class FrostedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack( // 重叠组件
        children: <Widget>[
          ConstrainedBox( //约束性盒子 widget，作用：添加额外的约束条件child上
            constraints: const BoxConstraints.expand(),// 约束条件
            child: Image.network('https://avatars1.githubusercontent.com/u/40989150?s=460&v=4'),
          ),
          Center(
            child: ClipRect( // 可裁切的矩形
              child: BackdropFilter( // 背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200), //盒子修饰器
                    child: Center(
                      child: Text('veshen',style:Theme.of(context).textTheme.display3),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}