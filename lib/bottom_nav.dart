import 'package:flutter/material.dart';

// stful 快捷生成动态widget

class BottomNavigationWidget extends StatefulWidget {
  final Widget child;

  BottomNavigationWidget({Key key, this.child}) : super(key: key);

  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold( //Scaffold 脚手架 里面定义好了一些组件
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'Home',
              style : TextStyle(color: _BottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'Email',
              style : TextStyle(color: _BottomNavigationColor)
            )
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'Pages',
              style : TextStyle(color: _BottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'Airplay',
              style : TextStyle(color: _BottomNavigationColor)
            )
          ),
        ],
      ),
    );
  }
}