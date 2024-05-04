// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_city_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCityResponseImpl _$$GetCityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCityResponseImpl(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CityData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetCityResponseImplToJson(
        _$GetCityResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

_$CityDataImpl _$$CityDataImplFromJson(Map<String, dynamic> json) =>
    _$CityDataImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
      provinceCode: json['provinceCode'] as String?,
    );

Map<String, dynamic> _$$CityDataImplToJson(_$CityDataImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'provinceCode': instance.provinceCode,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      total: (json['total'] as num?)?.toInt(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'pagination': instance.pagination,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      total: (json['total'] as num?)?.toInt(),
      pages: json['pages'] == null
          ? null
          : Pages.fromJson(json['pages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'pages': instance.pages,
    };

_$PagesImpl _$$PagesImplFromJson(Map<String, dynamic> json) => _$PagesImpl(
      first: (json['first'] as num?)?.toInt(),
      last: (json['last'] as num?)?.toInt(),
      current: (json['current'] as num?)?.toInt(),
      previous: json['previous'],
      next: (json['next'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PagesImplToJson(_$PagesImpl instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'current': instance.current,
      'previous': instance.previous,
      'next': instance.next,
    };
