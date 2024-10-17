class WeatherDto {
  num? id;
  String? main;
  String? description;
  String? icon;

  WeatherDto({this.id, this.main, this.description, this.icon});

  WeatherDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }
}