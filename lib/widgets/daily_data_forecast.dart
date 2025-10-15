import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp_starter_project/models/weather_data_daily.dart';
import 'package:weatherapp_starter_project/utils/custom_colors.dart';

class DailyDataForecast extends StatelessWidget {
  final WeatherDataDaily weatherDataDaily;

  const DailyDataForecast({super.key, required this.weatherDataDaily});

  String getDay(String? day) {
    if (day == null || day.isEmpty) return 'Unknown';
    try {
      final dt = DateTime.parse(day);
      return DateFormat('EEE').format(dt);
    } catch (e) {
      return day;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 400,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: CustomColors.dividerLine.withAlpha(50),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                "Next Days",
                style:
                    TextStyle(color: CustomColors.textColorBlack, fontSize: 17),
              )),
          dailyList(),
        ],
      ),
    );
  }

  Widget dailyList() {
    final count = weatherDataDaily.daily.length > 7 ? 7 : weatherDataDaily.daily.length;
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: count,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: CustomColors.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  getDay(weatherDataDaily.daily[index].date),
                  style: const TextStyle(
                    color: CustomColors.textColorBlack,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${weatherDataDaily.daily[index].maxTempC}°/${weatherDataDaily.daily[index].minTempC}°",
                  style: const TextStyle(
                    color: CustomColors.textColorBlack,
                    fontSize: 16,
                  ),
                ),
                Image.network(
                  "https:${weatherDataDaily.daily[index].condition?.icon ?? ''}",
                  width: 40,
                  height: 40,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
