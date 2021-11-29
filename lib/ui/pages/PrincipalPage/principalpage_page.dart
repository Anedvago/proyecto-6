import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:misiontic_template/ui/pages/Posts/posts_page.dart';
import 'package:misiontic_template/ui/pages/States/states_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Posts(),
    States(),
    Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color(0xFF27AE60),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.54),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "publicaciones",
            icon: Icon(
              Icons.music_note,
            ),
          ),
          BottomNavigationBarItem(
            label: "Estados",
            icon: Icon(
              Icons.book,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chats",
            icon: Icon(Icons.message),
          )
        ],
      ),
    );
  }
}
