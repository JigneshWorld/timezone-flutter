import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone_app/pages/cities_page.dart';

void main() {
  tzdata.initializeTimeZones();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimeZone App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CitiesPage(),
    );
  }
}
