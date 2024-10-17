class CoordDto {
  num? lon;
  num? lat;

  CoordDto({this.lon, this.lat});

  CoordDto.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }
}