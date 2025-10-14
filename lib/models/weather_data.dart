import 'package:weatherapp_starter_project/models/weather_data_current.dart';
import 'package:weatherapp_starter_project/models/weather_data_hourly.dart';

class WeatherData {
  final WeatherDataCurrent? current;
  final WeatherDataHourly? hourly;
  WeatherData([this.current, this.hourly]);

  //function to fetch above value
  WeatherDataCurrent getCurrentWeather() => current!;
  WeatherDataHourly getHourlyData() => hourly!;
}
