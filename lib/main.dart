/* ---------------
 * Author: Muhammad Afiq
 * Date: 19 Nov 2023
 * ---------------
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> langFramework = [
    'Java Programming',
    'Front-end development with React',
    'Next.js Framework',
    'Restful API using Python',
    'Cross-platform mobile apps with Google Flutter',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Record List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Record List'),
        ),
        body: ListView.builder(
          itemCount: langFramework.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(langFramework[index]),
            );
          },
        ),
      ),
    );
  }
}
