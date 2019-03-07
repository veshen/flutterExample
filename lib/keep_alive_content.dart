import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final Widget child;

  MyHomePage({Key key, this.child}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin { // with 只因引入Mixin

  int _counter = 0;

  @override
  bool get wantKeepAlive => true;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 主轴对齐 居中
          children: <Widget>[
            Text('点一次增加一个数字'),
            Text('$_counter',style: Theme.of(context).textTheme.display1,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'add',
        child: Icon(Icons.add),
      ),
    );
  }
}