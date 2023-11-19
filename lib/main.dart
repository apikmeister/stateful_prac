/* ---------------
 * Author: Muhammad Afiq
 * Date: 19 Nov 2023
 * ---------------
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulApp(),
    );
  }
}

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulApp createState() => _MyStatefulApp();
}

class _MyStatefulApp extends State<MyStatefulApp> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stateful App'),
        centerTitle: true,
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Enter number here...!',
          ),
          onChanged: (value) {
            if (int.parse(value) > 500) {
              setState(() {
                _inputText = 'Exceeded Credit Limit';
              });
            } else {
              setState(() {
                _inputText = 'Processing';
              });
            }
          },
        ),
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 50,
        child: Text(
          '$_inputText',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
