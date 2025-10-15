import 'package:weatherapp_starter_project/models/weather_data_current.dart';
import 'package:weatherapp_starter_project/models/weather_data_daily.dart';

class WeatherData {
  final WeatherDataCurrent? current;
  final WeatherDataDaily? daily;
  WeatherData([this.current, this.daily]);

  //function to fetch above value
  WeatherDataCurrent getCurrentWeather() => current!;
  WeatherDataDaily getDailyWeather() => daily!;
  
}
