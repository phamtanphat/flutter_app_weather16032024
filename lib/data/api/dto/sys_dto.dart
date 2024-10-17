class SysDto {
  num? type;
  num? id;
  String? country;
  num? sunrise;
  num? sunset;

  SysDto({this.type, this.id, this.country, this.sunrise, this.sunset});

  SysDto.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }
}