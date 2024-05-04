import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_city_response.freezed.dart';
part 'get_city_response.g.dart';

@freezed
class GetCityResponse with _$GetCityResponse {
  const factory GetCityResponse({
    @JsonKey(name: "statusCode")
    int? statusCode,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    List<CityData>? data,
    @JsonKey(name: "meta")
    Meta? meta,
  }) = _GetCityResponse;

  factory GetCityResponse.fromJson(Map<String, dynamic> json) => _$GetCityResponseFromJson(json);
}

@freezed
class CityData with _$CityData {
  const factory CityData({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "provinceCode")
    String? provinceCode,
  }) = _CityData;

  factory CityData.fromJson(Map<String, dynamic> json) => _$CityDataFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "total")
    int? total,
    @JsonKey(name: "pagination")
    Pagination? pagination,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: "total")
    int? total,
    @JsonKey(name: "pages")
    Pages? pages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}

@freezed
class Pages with _$Pages {
  const factory Pages({
    @JsonKey(name: "first")
    int? first,
    @JsonKey(name: "last")
    int? last,
    @JsonKey(name: "current")
    int? current,
    @JsonKey(name: "previous")
    dynamic previous,
    @JsonKey(name: "next")
    int? next,
  }) = _Pages;

  factory Pages.fromJson(Map<String, dynamic> json) => _$PagesFromJson(json);
}
