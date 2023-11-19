/* ---------------
 * Author: Muhammad Afiq
 * Date: 19 Nov 2023
 * ---------------
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<City> city = [
    City(code: "KUL", cityName: "Kuala Lumpur"),
    City(code: "AKL", cityName: "Auckland"),
    City(code: "DTM", cityName: "Dortmund"),
    City(code: "LPL", cityName: "Liverpool"),
    City(code: "IBZ", cityName: "Ibiza"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Fetch records into ListView'),
            centerTitle: true,
          ),
          body: ListView(
            children: city.map((e) {
              return ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  selectedTileColor: Colors.grey[300],
                  selected: true,
                  leading: Icon(Icons.flight),
                  title: Text(e.code),
                  subtitle: Text(e.cityName),
                  trailing: Icon(Icons.arrow_forward));
            }).toList(),
          )),
    );
  }
}

class City {
  String code, cityName;

  City({
    required this.code,
    required this.cityName,
  });
}
