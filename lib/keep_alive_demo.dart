import 'package:flutter/material.dart';
import 'keep_alive_content.dart';


class KeepAliveDemo extends StatefulWidget {
  final Widget child;

  KeepAliveDemo({Key key, this.child}) : super(key: key);

  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin{ // with 混入类
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =TabController(length: 3,vsync: this); //必须混入 SingleTickerProviderStateMixin 才能使用 vsync
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('keep alive demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car),),
            Tab(icon: Icon(Icons.directions_transit),),
            Tab(icon: Icon(Icons.directions_bike),),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}