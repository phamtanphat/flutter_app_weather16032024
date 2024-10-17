class WindDto {
  num? speed;
  num? deg;
  num? gust;

  WindDto({this.speed, this.deg, this.gust});

  WindDto.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }
}