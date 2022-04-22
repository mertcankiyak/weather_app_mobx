import 'package:flutter/material.dart';
import 'package:weather_app_mobx/features/weather/viewmodel/weather_viewmodel.dart';
import 'package:weather_app_mobx/product/enum/LocationEnum.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class WeatherView extends StatelessWidget {
  WeatherView({Key? key}) : super(key: key);

  final _weatherViewModel = WeatherViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.indigo,
      title: Text("Weather App"),
    );
  }

  Center _buildBody() {
    return Center(
      child: Column(
        children: [
          Observer(builder: (_) {
            if (_weatherViewModel.isLoading) {
              return CircularProgressIndicator();
            } else {
              return _buildWeatherInfoItem();
            }
          }),
          _countryRow(),
        ],
      ),
    );
  }

  Card _buildWeatherInfoItem() {
    return Card(
      child: ListTile(
        title: Text((_weatherViewModel.weather?.location?.country) ?? "-"),
        subtitle: Text(_weatherViewModel.weather?.location?.name ?? "-"),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_weatherViewModel.weather?.current?.tempC.toString() ?? "-"),
            Text(" \u2103"),
          ],
        ),
        trailing: Text(_weatherViewModel.weather?.location?.localtime ?? "-"),
      ),
    );
  }

  Row _countryRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _istanbulWeatherButton(),
        _londonWeatherButton(),
        _ankaraWeatherButton(),
      ],
    );
  }

  ElevatedButton _istanbulWeatherButton() {
    return ElevatedButton(
      onPressed: () {
        _weatherViewModel.fetchWeather(locationName: LocationName.ISTANBUL);
      },
      child: Text("İstanbul"),
    );
  }

  ElevatedButton _londonWeatherButton() {
    return ElevatedButton(
      onPressed: () {
        _weatherViewModel.fetchWeather(locationName: LocationName.LONDON);
      },
      child: Text("Londra"),
    );
  }

  ElevatedButton _ankaraWeatherButton() {
    return ElevatedButton(
      onPressed: () {
        _weatherViewModel.fetchWeather(locationName: LocationName.ANKARA);
      },
      child: Text("Ankara"),
    );
  }
}
