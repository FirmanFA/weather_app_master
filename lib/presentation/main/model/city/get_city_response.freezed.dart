// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_city_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCityResponse _$GetCityResponseFromJson(Map<String, dynamic> json) {
  return _GetCityResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCityResponse {
  @JsonKey(name: "statusCode")
  int? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<CityData>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCityResponseCopyWith<GetCityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCityResponseCopyWith<$Res> {
  factory $GetCityResponseCopyWith(
          GetCityResponse value, $Res Function(GetCityResponse) then) =
      _$GetCityResponseCopyWithImpl<$Res, GetCityResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") int? statusCode,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<CityData>? data,
      @JsonKey(name: "meta") Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$GetCityResponseCopyWithImpl<$Res, $Val extends GetCityResponse>
    implements $GetCityResponseCopyWith<$Res> {
  _$GetCityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CityData>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetCityResponseImplCopyWith<$Res>
    implements $GetCityResponseCopyWith<$Res> {
  factory _$$GetCityResponseImplCopyWith(_$GetCityResponseImpl value,
          $Res Function(_$GetCityResponseImpl) then) =
      __$$GetCityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") int? statusCode,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<CityData>? data,
      @JsonKey(name: "meta") Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$GetCityResponseImplCopyWithImpl<$Res>
    extends _$GetCityResponseCopyWithImpl<$Res, _$GetCityResponseImpl>
    implements _$$GetCityResponseImplCopyWith<$Res> {
  __$$GetCityResponseImplCopyWithImpl(
      _$GetCityResponseImpl _value, $Res Function(_$GetCityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$GetCityResponseImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CityData>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCityResponseImpl implements _GetCityResponse {
  const _$GetCityResponseImpl(
      {@JsonKey(name: "statusCode") this.statusCode,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<CityData>? data,
      @JsonKey(name: "meta") this.meta})
      : _data = data;

  factory _$GetCityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCityResponseImplFromJson(json);

  @override
  @JsonKey(name: "statusCode")
  final int? statusCode;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<CityData>? _data;
  @override
  @JsonKey(name: "data")
  List<CityData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "meta")
  final Meta? meta;

  @override
  String toString() {
    return 'GetCityResponse(statusCode: $statusCode, message: $message, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCityResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCityResponseImplCopyWith<_$GetCityResponseImpl> get copyWith =>
      __$$GetCityResponseImplCopyWithImpl<_$GetCityResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCityResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCityResponse implements GetCityResponse {
  const factory _GetCityResponse(
      {@JsonKey(name: "statusCode") final int? statusCode,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<CityData>? data,
      @JsonKey(name: "meta") final Meta? meta}) = _$GetCityResponseImpl;

  factory _GetCityResponse.fromJson(Map<String, dynamic> json) =
      _$GetCityResponseImpl.fromJson;

  @override
  @JsonKey(name: "statusCode")
  int? get statusCode;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<CityData>? get data;
  @override
  @JsonKey(name: "meta")
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$GetCityResponseImplCopyWith<_$GetCityResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityData _$CityDataFromJson(Map<String, dynamic> json) {
  return _CityData.fromJson(json);
}

/// @nodoc
mixin _$CityData {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "provinceCode")
  String? get provinceCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDataCopyWith<CityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDataCopyWith<$Res> {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) then) =
      _$CityDataCopyWithImpl<$Res, CityData>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "provinceCode") String? provinceCode});
}

/// @nodoc
class _$CityDataCopyWithImpl<$Res, $Val extends CityData>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? provinceCode = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceCode: freezed == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityDataImplCopyWith<$Res>
    implements $CityDataCopyWith<$Res> {
  factory _$$CityDataImplCopyWith(
          _$CityDataImpl value, $Res Function(_$CityDataImpl) then) =
      __$$CityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "provinceCode") String? provinceCode});
}

/// @nodoc
class __$$CityDataImplCopyWithImpl<$Res>
    extends _$CityDataCopyWithImpl<$Res, _$CityDataImpl>
    implements _$$CityDataImplCopyWith<$Res> {
  __$$CityDataImplCopyWithImpl(
      _$CityDataImpl _value, $Res Function(_$CityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? provinceCode = freezed,
  }) {
    return _then(_$CityDataImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceCode: freezed == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDataImpl implements _CityData {
  const _$CityDataImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "provinceCode") this.provinceCode});

  factory _$CityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDataImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "provinceCode")
  final String? provinceCode;

  @override
  String toString() {
    return 'CityData(code: $code, name: $name, provinceCode: $provinceCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.provinceCode, provinceCode) ||
                other.provinceCode == provinceCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, provinceCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      __$$CityDataImplCopyWithImpl<_$CityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDataImplToJson(
      this,
    );
  }
}

abstract class _CityData implements CityData {
  const factory _CityData(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "provinceCode") final String? provinceCode}) =
      _$CityDataImpl;

  factory _CityData.fromJson(Map<String, dynamic> json) =
      _$CityDataImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "provinceCode")
  String? get provinceCode;
  @override
  @JsonKey(ignore: true)
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "pagination")
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "pagination") Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "pagination") Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$MetaImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: "total") this.total,
      @JsonKey(name: "pagination") this.pagination});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "pagination")
  final Pagination? pagination;

  @override
  String toString() {
    return 'Meta(total: $total, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: "total") final int? total,
      @JsonKey(name: "pagination") final Pagination? pagination}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "pagination")
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "pages")
  Pages? get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "pages") Pages? pages});

  $PagesCopyWith<$Res>? get pages;
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Pages?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PagesCopyWith<$Res>? get pages {
    if (_value.pages == null) {
      return null;
    }

    return $PagesCopyWith<$Res>(_value.pages!, (value) {
      return _then(_value.copyWith(pages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "pages") Pages? pages});

  @override
  $PagesCopyWith<$Res>? get pages;
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$PaginationImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Pages?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {@JsonKey(name: "total") this.total, @JsonKey(name: "pages") this.pages});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "pages")
  final Pages? pages;

  @override
  String toString() {
    return 'Pagination(total: $total, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {@JsonKey(name: "total") final int? total,
      @JsonKey(name: "pages") final Pages? pages}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "pages")
  Pages? get pages;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pages _$PagesFromJson(Map<String, dynamic> json) {
  return _Pages.fromJson(json);
}

/// @nodoc
mixin _$Pages {
  @JsonKey(name: "first")
  int? get first => throw _privateConstructorUsedError;
  @JsonKey(name: "last")
  int? get last => throw _privateConstructorUsedError;
  @JsonKey(name: "current")
  int? get current => throw _privateConstructorUsedError;
  @JsonKey(name: "previous")
  dynamic get previous => throw _privateConstructorUsedError;
  @JsonKey(name: "next")
  int? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagesCopyWith<Pages> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagesCopyWith<$Res> {
  factory $PagesCopyWith(Pages value, $Res Function(Pages) then) =
      _$PagesCopyWithImpl<$Res, Pages>;
  @useResult
  $Res call(
      {@JsonKey(name: "first") int? first,
      @JsonKey(name: "last") int? last,
      @JsonKey(name: "current") int? current,
      @JsonKey(name: "previous") dynamic previous,
      @JsonKey(name: "next") int? next});
}

/// @nodoc
class _$PagesCopyWithImpl<$Res, $Val extends Pages>
    implements $PagesCopyWith<$Res> {
  _$PagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? current = freezed,
    Object? previous = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagesImplCopyWith<$Res> implements $PagesCopyWith<$Res> {
  factory _$$PagesImplCopyWith(
          _$PagesImpl value, $Res Function(_$PagesImpl) then) =
      __$$PagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first") int? first,
      @JsonKey(name: "last") int? last,
      @JsonKey(name: "current") int? current,
      @JsonKey(name: "previous") dynamic previous,
      @JsonKey(name: "next") int? next});
}

/// @nodoc
class __$$PagesImplCopyWithImpl<$Res>
    extends _$PagesCopyWithImpl<$Res, _$PagesImpl>
    implements _$$PagesImplCopyWith<$Res> {
  __$$PagesImplCopyWithImpl(
      _$PagesImpl _value, $Res Function(_$PagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? current = freezed,
    Object? previous = freezed,
    Object? next = freezed,
  }) {
    return _then(_$PagesImpl(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagesImpl implements _Pages {
  const _$PagesImpl(
      {@JsonKey(name: "first") this.first,
      @JsonKey(name: "last") this.last,
      @JsonKey(name: "current") this.current,
      @JsonKey(name: "previous") this.previous,
      @JsonKey(name: "next") this.next});

  factory _$PagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagesImplFromJson(json);

  @override
  @JsonKey(name: "first")
  final int? first;
  @override
  @JsonKey(name: "last")
  final int? last;
  @override
  @JsonKey(name: "current")
  final int? current;
  @override
  @JsonKey(name: "previous")
  final dynamic previous;
  @override
  @JsonKey(name: "next")
  final int? next;

  @override
  String toString() {
    return 'Pages(first: $first, last: $last, current: $current, previous: $previous, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagesImpl &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, current,
      const DeepCollectionEquality().hash(previous), next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagesImplCopyWith<_$PagesImpl> get copyWith =>
      __$$PagesImplCopyWithImpl<_$PagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagesImplToJson(
      this,
    );
  }
}

abstract class _Pages implements Pages {
  const factory _Pages(
      {@JsonKey(name: "first") final int? first,
      @JsonKey(name: "last") final int? last,
      @JsonKey(name: "current") final int? current,
      @JsonKey(name: "previous") final dynamic previous,
      @JsonKey(name: "next") final int? next}) = _$PagesImpl;

  factory _Pages.fromJson(Map<String, dynamic> json) = _$PagesImpl.fromJson;

  @override
  @JsonKey(name: "first")
  int? get first;
  @override
  @JsonKey(name: "last")
  int? get last;
  @override
  @JsonKey(name: "current")
  int? get current;
  @override
  @JsonKey(name: "previous")
  dynamic get previous;
  @override
  @JsonKey(name: "next")
  int? get next;
  @override
  @JsonKey(ignore: true)
  _$$PagesImplCopyWith<_$PagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
