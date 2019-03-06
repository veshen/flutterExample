import 'package:flutter/material.dart';

// stlss

class EmailScreen extends StatelessWidget {
  final Widget child;

  EmailScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('邮件 Email'),
      ),
      body: Center(
        child: Text('Email'),
      ),
    );
  }
}