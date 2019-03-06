import 'package:flutter/material.dart';

// stlss

class AirplayScreen extends StatelessWidget {
  final Widget child;

  AirplayScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airplay'),
      ),
      body: Center(
        child: Text('Airplay'),
      ),
    );
  }
}