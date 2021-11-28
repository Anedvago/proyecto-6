import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class States extends StatelessWidget {
  const States({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          backgroundColor: Color(0xFF27AE60),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.54),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: [
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
        appBar: AppBar(
          title: Text("Estados"),
          backgroundColor: Color(0xFF27AE60),
          actions: [Icon(Icons.search), Icon(Icons.more_vert)],
        ),
        backgroundColor: const Color(0xFF343434),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(),
            ],
          ),
        ));
  }
}
