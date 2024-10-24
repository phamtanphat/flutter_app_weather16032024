import 'package:equatable/equatable.dart';

class SearchWeather extends Equatable{
  String name = "";
  num temp = 0;
  num minTemp = 0;
  num maxTemp = 0;
  String status = "";

  SearchWeather({
    required this.name,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.status
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, temp, minTemp, maxTemp, status];
}
