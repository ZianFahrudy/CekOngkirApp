// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
class _$CityTearOff {
  const _$CityTearOff();

  _City call(
      {@JsonKey(name: "city_id") String cityId = "",
      @JsonKey(name: "province_id") String provinceId = "",
      String province = "",
      String type = "",
      @JsonKey(name: "city_name") String cityName = "",
      @JsonKey(name: "postal_code") String postalCode = ""}) {
    return _City(
      cityId: cityId,
      provinceId: provinceId,
      province: province,
      type: type,
      cityName: cityName,
      postalCode: postalCode,
    );
  }

  City fromJson(Map<String, Object> json) {
    return City.fromJson(json);
  }
}

/// @nodoc
const $City = _$CityTearOff();

/// @nodoc
mixin _$City {
  @JsonKey(name: "city_id")
  String get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: "province_id")
  String get provinceId => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "city_name")
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: "postal_code")
  String get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "city_id") String cityId,
      @JsonKey(name: "province_id") String provinceId,
      String province,
      String type,
      @JsonKey(name: "city_name") String cityName,
      @JsonKey(name: "postal_code") String postalCode});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  final City _value;
  // ignore: unused_field
  final $Res Function(City) _then;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? provinceId = freezed,
    Object? province = freezed,
    Object? type = freezed,
    Object? cityName = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$CityCopyWith(_City value, $Res Function(_City) then) =
      __$CityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "city_id") String cityId,
      @JsonKey(name: "province_id") String provinceId,
      String province,
      String type,
      @JsonKey(name: "city_name") String cityName,
      @JsonKey(name: "postal_code") String postalCode});
}

/// @nodoc
class __$CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res>
    implements _$CityCopyWith<$Res> {
  __$CityCopyWithImpl(_City _value, $Res Function(_City) _then)
      : super(_value, (v) => _then(v as _City));

  @override
  _City get _value => super._value as _City;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? provinceId = freezed,
    Object? province = freezed,
    Object? type = freezed,
    Object? cityName = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_City(
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_City implements _City {
  _$_City(
      {@JsonKey(name: "city_id") this.cityId = "",
      @JsonKey(name: "province_id") this.provinceId = "",
      this.province = "",
      this.type = "",
      @JsonKey(name: "city_name") this.cityName = "",
      @JsonKey(name: "postal_code") this.postalCode = ""});

  factory _$_City.fromJson(Map<String, dynamic> json) =>
      _$_$_CityFromJson(json);

  @override
  @JsonKey(name: "city_id")
  final String cityId;
  @override
  @JsonKey(name: "province_id")
  final String provinceId;
  @JsonKey(defaultValue: "")
  @override
  final String province;
  @JsonKey(defaultValue: "")
  @override
  final String type;
  @override
  @JsonKey(name: "city_name")
  final String cityName;
  @override
  @JsonKey(name: "postal_code")
  final String postalCode;

  @override
  String toString() {
    return 'City(cityId: $cityId, provinceId: $provinceId, province: $province, type: $type, cityName: $cityName, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _City &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(cityName) ^
      const DeepCollectionEquality().hash(postalCode);

  @JsonKey(ignore: true)
  @override
  _$CityCopyWith<_City> get copyWith =>
      __$CityCopyWithImpl<_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CityToJson(this);
  }
}

abstract class _City implements City {
  factory _City(
      {@JsonKey(name: "city_id") String cityId,
      @JsonKey(name: "province_id") String provinceId,
      String province,
      String type,
      @JsonKey(name: "city_name") String cityName,
      @JsonKey(name: "postal_code") String postalCode}) = _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  @JsonKey(name: "city_id")
  String get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "province_id")
  String get provinceId => throw _privateConstructorUsedError;
  @override
  String get province => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "city_name")
  String get cityName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "postal_code")
  String get postalCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityCopyWith<_City> get copyWith => throw _privateConstructorUsedError;
}
