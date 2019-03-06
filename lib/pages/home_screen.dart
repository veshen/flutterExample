import 'package:flutter/material.dart';

// stlss

class HomeScreen extends StatelessWidget {
  final Widget child;

  HomeScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页 HOME'),
      ),
      body: Center(
        child: Text('HOME'),
      ),
    );
  }
}