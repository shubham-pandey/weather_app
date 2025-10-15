import 'dart:convert';

import 'package:weatherapp_starter_project/api/api.dart';
import 'package:weatherapp_starter_project/models/weather_data.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp_starter_project/models/weather_data_current.dart';
import 'package:weatherapp_starter_project/models/weather_data_daily.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  //processing the data from api response to json
  Future<WeatherData?> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString),
        WeatherDataDaily.fromJson(jsonString));
    return weatherData!;
  }
}

String apiURL(var lat, lon) {
  String url =
      "http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$lat,$lon&days=7&aqi=no";
  return url;
}
