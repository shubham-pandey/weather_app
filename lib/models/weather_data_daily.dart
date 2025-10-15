class WeatherDataDaily {
  List<Daily> daily;
  WeatherDataDaily({required this.daily});

  factory WeatherDataDaily.fromJson(Map<String, dynamic> json) {
    print('WeatherDataDaily.fromJson: forecast = [36m${json['forecast']}[0m');
    print('WeatherDataDaily.fromJson: forecastday = [36m${json['forecast']?['forecastday']}[0m');
    return WeatherDataDaily(
      daily: ((json['forecast']?['forecastday'] as List<dynamic>?) ?? [])
        .map((e) => Daily.fromJson(e as Map<String, dynamic>))
        .toList(),
    );
  }

}


class Condition {
  final String? text;
  final String? icon;
  final int? code;

  Condition({this.text, this.icon, this.code});

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
      code: json['code'] as int?,
    );
  }
}

class Daily {
  final String? date;
  final int? maxTempC;
  final int? minTempC;
  final int? avgTempC;
  final Condition? condition;

  Daily({
    this.date,
    this.maxTempC,
    this.minTempC,
    this.avgTempC,
    this.condition,
  });

  factory Daily.fromJson(Map<String, dynamic> json) {
    final day = json['day'] as Map<String, dynamic>?;
    return Daily(
      date: json['date'] as String?,
      maxTempC: (day?['maxtemp_c'] as num?)?.round(),
      minTempC: (day?['mintemp_c'] as num?)?.round(),
      avgTempC: (day?['avgtemp_c'] as num?)?.round(),
      condition: day?['condition'] != null ? Condition.fromJson(day!['condition'] as Map<String, dynamic>) : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'date': date,
        'maxtemp_c': maxTempC,
        'mintemp_c': minTempC,
        'avgtemp_c': avgTempC,
      };
}
