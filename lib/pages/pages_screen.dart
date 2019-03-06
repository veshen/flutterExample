import 'package:flutter/material.dart';

// stlss

class PagesScreen extends StatelessWidget {
  final Widget child;

  PagesScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面 pages'),
      ),
      body: Center(
        child: Text('Pages'),
      ),
    );
  }
}