// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'province.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
class _$ProvinceTearOff {
  const _$ProvinceTearOff();

  _Province call(
      {@JsonKey(name: "province_id") String provinceId = '',
      String province = ''}) {
    return _Province(
      provinceId: provinceId,
      province: province,
    );
  }

  Province fromJson(Map<String, Object> json) {
    return Province.fromJson(json);
  }
}

/// @nodoc
const $Province = _$ProvinceTearOff();

/// @nodoc
mixin _$Province {
  @JsonKey(name: "province_id")
  String get provinceId => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "province_id") String provinceId, String province});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res> implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  final Province _value;
  // ignore: unused_field
  final $Res Function(Province) _then;

  @override
  $Res call({
    Object? provinceId = freezed,
    Object? province = freezed,
  }) {
    return _then(_value.copyWith(
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProvinceCopyWith<$Res> implements $ProvinceCopyWith<$Res> {
  factory _$ProvinceCopyWith(_Province value, $Res Function(_Province) then) =
      __$ProvinceCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "province_id") String provinceId, String province});
}

/// @nodoc
class __$ProvinceCopyWithImpl<$Res> extends _$ProvinceCopyWithImpl<$Res>
    implements _$ProvinceCopyWith<$Res> {
  __$ProvinceCopyWithImpl(_Province _value, $Res Function(_Province) _then)
      : super(_value, (v) => _then(v as _Province));

  @override
  _Province get _value => super._value as _Province;

  @override
  $Res call({
    Object? provinceId = freezed,
    Object? province = freezed,
  }) {
    return _then(_Province(
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Province implements _Province {
  _$_Province(
      {@JsonKey(name: "province_id") this.provinceId = '', this.province = ''});

  factory _$_Province.fromJson(Map<String, dynamic> json) =>
      _$_$_ProvinceFromJson(json);

  @override
  @JsonKey(name: "province_id")
  final String provinceId;
  @JsonKey(defaultValue: '')
  @override
  final String province;

  @override
  String toString() {
    return 'Province(provinceId: $provinceId, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Province &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(province);

  @JsonKey(ignore: true)
  @override
  _$ProvinceCopyWith<_Province> get copyWith =>
      __$ProvinceCopyWithImpl<_Province>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProvinceToJson(this);
  }
}

abstract class _Province implements Province {
  factory _Province(
      {@JsonKey(name: "province_id") String provinceId,
      String province}) = _$_Province;

  factory _Province.fromJson(Map<String, dynamic> json) = _$_Province.fromJson;

  @override
  @JsonKey(name: "province_id")
  String get provinceId => throw _privateConstructorUsedError;
  @override
  String get province => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProvinceCopyWith<_Province> get copyWith =>
      throw _privateConstructorUsedError;
}
