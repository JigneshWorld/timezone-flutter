import 'package:timezone/timezone.dart' as tz;

class CityTime {
  final String time;
  final bool isNightTime;

  CityTime({
    this.time,
    this.isNightTime,
  });
}

class TimeUtils {
  static CityTime getFor(String location) {
    var newYork = tz.getLocation(location);
    var now = tz.TZDateTime.now(newYork);
    print(now);

    return CityTime(
      time: '${now.hour}: ${now.minute}',
      isNightTime: now.hour < 6 || now.hour > 20,
    );
  }
}
