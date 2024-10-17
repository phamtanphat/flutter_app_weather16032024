class CloudsDto {
  num? all;

  CloudsDto({this.all});

  CloudsDto.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }
}