import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weatherapp_starter_project/models/weather_data_hourly.dart';
import 'package:weatherapp_starter_project/controller/global_controller.dart';
import 'package:weatherapp_starter_project/utils/custom_colors.dart';

class HourlyDataWidget extends StatelessWidget {
  final WeatherDataHourly weatherDataHourly;
  const HourlyDataWidget({super.key, required this.weatherDataHourly});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          alignment: Alignment.topCenter,
          child: const Text("Today", style: TextStyle(fontSize: 18)),
        ),
        hourlyList(),
      ],
    );
  }


  Widget hourlyList() {
    return Container(
      height: 150,
      padding: const EdgeInsets.only(top:10,bottom:10),
      child: ListView.builder(
        itemCount: weatherDataHourly.hourly.length > 12 ? 12: weatherDataHourly.hourly.length,
        itemBuilder: (context, index){
          return Obx(((() => GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(offset: const Offset(0.5,0), blurRadius: 30, spreadRadius: 1, color: CustomColors.dividerLine.withAlpha(150))],
                gradient: const LinearGradient(colors: [
                  CustomColors.firstGradientColor,
                  CustomColors.secondGradientColor
                ])
              ),
            )
          ))));
        },
        )
    );
  }
}

class HourlyDetails extends StatelessWidget {
  int temp;
  int day;
  String weatherIcon;
  HourlyDetails({super.key, required this.day, required this.temp, required this.weatherIcon});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}