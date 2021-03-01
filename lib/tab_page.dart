import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List items = <Widget>[HomePage(), Text('Page 2'), Text('Page 3')];

    return Scaffold(
      body: Center(child: items[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('Search')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Account'))
          ]),
    );
  }

  void _onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
