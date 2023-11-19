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
    List<Student> students = [
      Student(name: 'Muhammad Afiq', paymentStatus: 'Completed'),
      Student(name: 'Ali Ahmad', paymentStatus: 'Pending'),
      Student(name: 'Abu Murabbi', paymentStatus: 'Completed'),
      Student(name: 'Ahmad Salah', paymentStatus: 'Completed'),
      Student(name: 'Mohamad Sane', paymentStatus: 'Pending'),
    ];

    return MaterialApp(
      home: MaterialApp(
          title: 'MyApp',
          home: Scaffold(
            appBar: AppBar(
              title: Text('Student List'),
              centerTitle: true,
            ),
            body: ListView(
              children: students
                  .where((e) => e.paymentStatus == 'Completed')
                  .map((e) => ListTile(
                        title: Text(e.name),
                        subtitle: Text(e.paymentStatus),
                      ))
                  .toList(),
            ),
          )),
    );
  }
}

class Student {
  String name;
  String paymentStatus;

  Student({
    required this.name,
    required this.paymentStatus,
  });
}
