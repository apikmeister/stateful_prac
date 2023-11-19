/* ---------------
 * Author: Muhammad Afiq
 * Date: 19 Nov 2023
 * ---------------
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> refBooks = [
    "Java Servlet Programming",
    "Front-end with Angular",
    "Linux Administration",
    "MongoDB for NoSQL",
    "Microsoft Azure Security",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Populate A List'),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(60),
            child: ListView(
              children: refBooks.map((e) {
                return Container(
                  child: Text(e),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  color: Colors.blue[200],
                );
              }).toList(),
            ),
          ),
        ));
  }
}
