class WeatherDataCurrent {
  final Current current;
  WeatherDataCurrent({required this.current});

  // Getter for easier access
  Current get data => current;

  //creating constructor for passing json data to Current class
  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) =>
      WeatherDataCurrent(current: Current.fromJson(json['current']));
}

class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        text: json['text'] as String?,
        icon: json['icon'] as String?,
        code: json['code'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'icon': icon,
        'code': code,
      };
}

class Current {
  int? tempC;
  int? isDay;
  Condition? condition;
  double? windMph;
  int? humidity;
  int? cloud;

  Current({
    this.tempC,
    this.isDay,
    this.condition,
    this.windMph,
    this.humidity,
    this.cloud,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        tempC: (json['temp_c'] as num?)?.round(),
        isDay: json['is_day'] as int?,
        condition: json['condition'] == null
            ? null
            : Condition.fromJson(json['condition'] as Map<String, dynamic>),
        windMph: (json['wind_mph'] as num?)?.toDouble(),
        humidity: json['humidity'] as int?,
        cloud: json['cloud'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'temp_c': tempC,
        'is_day': isDay,
        'condition': condition?.toJson(),
        'wind_mph': windMph,
        'humidity': humidity,
        'cloud': cloud,
      };
}
