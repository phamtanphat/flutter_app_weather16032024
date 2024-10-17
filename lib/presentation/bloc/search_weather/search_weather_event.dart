import 'package:flutter_app_weather16032024/common/base_event.dart';

class SearchWeatherEvent extends BaseEvent {
  String cityName;

  SearchWeatherEvent({required this.cityName});

  @override
  List<Object?> get props => [cityName];
 }