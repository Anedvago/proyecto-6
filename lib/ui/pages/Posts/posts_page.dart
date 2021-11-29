import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Publicaciones"),
            backgroundColor: const Color(0xFF27AE60),
            actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: "Todo"),
                Tab(text: "Top"),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xFF27AE60),
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
          backgroundColor: const Color(0xFF343434),
          body: TabBarView(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      color: const Color(0xFF474646),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF27AE60), width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            ListTile(
                              title: Text(
                                'Nombre de la cancion',
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                'Genero',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                '5 min',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      color: const Color(0xFF474646),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF27AE60), width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            ListTile(
                              title: Text(
                                '1. Nombre de la cancion',
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                'Genero',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                '5 min',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
