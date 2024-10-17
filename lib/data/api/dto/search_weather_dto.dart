import 'package:flutter_app_weather16032024/data/api/dto/clouds_dto.dart';
import 'package:flutter_app_weather16032024/data/api/dto/coord_dto.dart';
import 'package:flutter_app_weather16032024/data/api/dto/main_dto.dart';
import 'package:flutter_app_weather16032024/data/api/dto/rain_dto.dart';
import 'package:flutter_app_weather16032024/data/api/dto/sys_dto.dart';
import 'package:flutter_app_weather16032024/data/api/dto/weather_dto.dart';
import 'package:flutter_app_weather16032024/data/api/dto/wind_dto.dart';

class SearchWeatherDto {
  CoordDto? coordDto;
  List<WeatherDto>? weatherDto;
  String? base;
  MainDto? mainDto;
  int? visibility;
  WindDto? windDto;
  RainDto? rainDto;
  CloudsDto? cloudsDto;
  int? dt;
  SysDto? sysDto;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  SearchWeatherDto(
      {this.coordDto,
      this.weatherDto,
      this.base,
      this.mainDto,
      this.visibility,
      this.windDto,
      this.rainDto,
      this.cloudsDto,
      this.dt,
      this.sysDto,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  SearchWeatherDto.fromJson(Map<String, dynamic> json) {
    coordDto = json['coord'] != null ? CoordDto.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      weatherDto = <WeatherDto>[];
      json['weather'].forEach((v) {
        weatherDto!.add(WeatherDto.fromJson(v));
      });
    }
    base = json['base'];
    mainDto = json['main'] != null ? MainDto.fromJson(json['main']) : null;
    visibility = json['visibility'];
    windDto = json['wind'] != null ? WindDto.fromJson(json['wind']) : null;
    rainDto = json['rain'] != null ? RainDto.fromJson(json['rain']) : null;
    cloudsDto = json['clouds'] != null ? CloudsDto.fromJson(json['clouds']) : null;
    dt = json['dt'];
    sysDto = json['sys'] != null ? SysDto.fromJson(json['sys']) : null;
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'];
    cod = json['cod'];
  }
}
