import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  // final Widget child;
  String _title;
  EachView(this._title);
  // EachView({Key key, this._title}) : super(key: key);
  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}