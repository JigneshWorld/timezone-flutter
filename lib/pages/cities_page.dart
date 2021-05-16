import 'package:flutter/material.dart';
import 'package:timezone_app/utils/time_utils.dart';

// Berlin, New York, Chicago, Jakarta, Kolkata, Cairo, Beijing

class CitiesPage extends StatelessWidget {
  const CitiesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locations = [
      'Europe/Berlin',
      'America/New_York',
      'America/Chicago',
      'Asia/Jakarta',
      'Asia/Kolkata',
      'Africa/Cairo',
      'Asia/Shanghai',
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Cities'),
        ),
        body: ListView(
          children: locations.map(
            (location) {
              final cityTime = TimeUtils.getFor(location);
              return ListTile(
                title: Text(location),
                subtitle: Text(cityTime.time),
                trailing: Icon(
                  cityTime.isNightTime ? Icons.nights_stay : Icons.wb_sunny,
                ),
              );
            },
          ).toList(),
        ));
  }
}
