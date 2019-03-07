import 'package:flutter/material.dart';
import 'each_view.dart';

// stful 动态widget代码快速生成

class BottomAppBarDemo extends StatefulWidget {
  final Widget child;

  BottomAppBarDemo({Key key, this.child}) : super(key: key);

  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView;
  int _index = 0;
  @override
  void initState() {// 初始化状态方法
    // TODO: implement initState
    super.initState();
    _eachView = List();
    _eachView..add(EachView('HOME'))..add(EachView('Airplay'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton( // fab 可交互浮动按钮
        onPressed: (){
          Navigator.of(context).push(
           MaterialPageRoute(
             builder: (BuildContext context){
               return EachView('New page');
             }
           )
          );
        },
        tooltip: '提示tooltip 长按显示',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(), // 圆形 缺口 为了和上面的按钮融合
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airplay),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 1;
                });
              },
            ),
          ],
        ),
      ), 
    );
  }
}