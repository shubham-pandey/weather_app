import 'package:weatherapp_starter_project/models/weather/condition.dart';
class WeatherDataHourly {
  List<Hourly> hourly;
  WeatherDataHourly({required this.hourly});

  factory WeatherDataHourly.fromJson(Map<String, dynamic> json) =>
      WeatherDataHourly(
        hourly: (json['hourly'] as List<dynamic>?)
            ?.map((e) => Hourly.fromJson(e))
            .toList() ?? [],
      );
}



class Hourly {

  String? time;
  int? tempC;
  Condition? condition;
  

  Hourly({

    this.time,
    this.tempC,
    this.condition,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
        time: json['time'] as String?,
        tempC: (json['temp_c'] as num?)?.round(),
        condition: json['condition'] == null
            ? null
            : Condition.fromJson(json['condition'] as Map<String, dynamic>)
      );

  Map<String, dynamic> toJson() => {
        'time': time,
        'temp_c': tempC,
        'condition': condition?.toJson(),
      };
}
