// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WeatherViewModel on _WeatherViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_WeatherViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$weatherAtom =
      Atom(name: '_WeatherViewModelBase.weather', context: context);

  @override
  Weather? get weather {
    _$weatherAtom.reportRead();
    return super.weather;
  }

  @override
  set weather(Weather? value) {
    _$weatherAtom.reportWrite(value, super.weather, () {
      super.weather = value;
    });
  }

  late final _$fetchWeatherAsyncAction =
      AsyncAction('_WeatherViewModelBase.fetchWeather', context: context);

  @override
  Future<void> fetchWeather({LocationName? locationName}) {
    return _$fetchWeatherAsyncAction
        .run(() => super.fetchWeather(locationName: locationName));
  }

  late final _$_WeatherViewModelBaseActionController =
      ActionController(name: '_WeatherViewModelBase', context: context);

  @override
  void changeLoadingStatus() {
    final _$actionInfo = _$_WeatherViewModelBaseActionController.startAction(
        name: '_WeatherViewModelBase.changeLoadingStatus');
    try {
      return super.changeLoadingStatus();
    } finally {
      _$_WeatherViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
weather: ${weather}
    ''';
  }
}
