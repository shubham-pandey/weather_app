import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp_starter_project/widgets/current_weather_widget.dart';
import 'package:weatherapp_starter_project/widgets/header_widget.dart';
import 'package:weatherapp_starter_project/controller/global_controller.dart';
import 'package:weatherapp_starter_project/widgets/hourly_data_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key}); // passes the key to the StatefulWidget helps manage and track widget efficiently when rebuiliding the ui

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState(); // Use the createstate method to allocate the state
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => globalController.checkLoading().isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(scrollDirection: Axis.vertical, children: [
                const SizedBox(height: 20),
                const HeaderWidget(),
                //for current temp
                CurrentWeatherWidget(
                  weatherDataCurrent:
                      globalController.getData().getCurrentWeather(),
                ),
                 const SizedBox(height: 20),
                HourlyDataWidget(weatherDataHourly: globalController.getData().getHourlyData()) 
                


              ],
              )),
      ),
    ); // const for efficient rendering
  }
}
