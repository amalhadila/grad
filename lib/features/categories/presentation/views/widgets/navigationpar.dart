import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';

class navgbar extends StatefulWidget {
  @override
  _navgbarState createState() => _navgbarState();
}

class _navgbarState extends State<navgbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: abarcolor,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.vpn_key),
          label: 'Key',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: 'Camera',
        ),
      ],
    );
  }
}
