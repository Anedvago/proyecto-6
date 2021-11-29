import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class States extends StatelessWidget {
  const States({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Estados"),
          backgroundColor: const Color(0xFF27AE60),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF27AE60),
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        backgroundColor: const Color(0xFF343434),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: const Color(0xFF474646),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xFF27AE60), width: 2)),
                  child: Column(
                    children: const <Widget>[
                      ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text(
                          'Nombre',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
