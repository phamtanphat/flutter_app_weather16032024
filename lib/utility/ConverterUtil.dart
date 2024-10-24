import 'package:flutter_app_weather16032024/data/api/dto/search_weather_dto.dart';
import 'package:flutter_app_weather16032024/data/model/search_weather.dart';

class ConverterUtil {
  static SearchWeather convertSearchWeather(SearchWeatherDto dto) {
    return SearchWeather(
        name: dto.name ?? "",
        temp: dto.mainDto?.temp ?? 0,
        minTemp: dto.mainDto?.tempMin ?? 0,
        maxTemp: dto.mainDto?.tempMax ?? 0,
        status: dto.weatherDto?.first.main ?? "");
  }
}
