// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cost_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostRequest _$CostRequestFromJson(Map<String, dynamic> json) {
  return _CostRequest.fromJson(json);
}

/// @nodoc
class _$CostRequestTearOff {
  const _$CostRequestTearOff();

  _CostRequest call(
      {String origin = '',
      String destination = '',
      int weight = 0,
      String courier = ''}) {
    return _CostRequest(
      origin: origin,
      destination: destination,
      weight: weight,
      courier: courier,
    );
  }

  CostRequest fromJson(Map<String, Object> json) {
    return CostRequest.fromJson(json);
  }
}

/// @nodoc
const $CostRequest = _$CostRequestTearOff();

/// @nodoc
mixin _$CostRequest {
  String get origin => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get courier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostRequestCopyWith<CostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostRequestCopyWith<$Res> {
  factory $CostRequestCopyWith(
          CostRequest value, $Res Function(CostRequest) then) =
      _$CostRequestCopyWithImpl<$Res>;
  $Res call({String origin, String destination, int weight, String courier});
}

/// @nodoc
class _$CostRequestCopyWithImpl<$Res> implements $CostRequestCopyWith<$Res> {
  _$CostRequestCopyWithImpl(this._value, this._then);

  final CostRequest _value;
  // ignore: unused_field
  final $Res Function(CostRequest) _then;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
  }) {
    return _then(_value.copyWith(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CostRequestCopyWith<$Res>
    implements $CostRequestCopyWith<$Res> {
  factory _$CostRequestCopyWith(
          _CostRequest value, $Res Function(_CostRequest) then) =
      __$CostRequestCopyWithImpl<$Res>;
  @override
  $Res call({String origin, String destination, int weight, String courier});
}

/// @nodoc
class __$CostRequestCopyWithImpl<$Res> extends _$CostRequestCopyWithImpl<$Res>
    implements _$CostRequestCopyWith<$Res> {
  __$CostRequestCopyWithImpl(
      _CostRequest _value, $Res Function(_CostRequest) _then)
      : super(_value, (v) => _then(v as _CostRequest));

  @override
  _CostRequest get _value => super._value as _CostRequest;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
  }) {
    return _then(_CostRequest(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostRequest implements _CostRequest {
  _$_CostRequest(
      {this.origin = '',
      this.destination = '',
      this.weight = 0,
      this.courier = ''});

  factory _$_CostRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_CostRequestFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String origin;
  @JsonKey(defaultValue: '')
  @override
  final String destination;
  @JsonKey(defaultValue: 0)
  @override
  final int weight;
  @JsonKey(defaultValue: '')
  @override
  final String courier;

  @override
  String toString() {
    return 'CostRequest(origin: $origin, destination: $destination, weight: $weight, courier: $courier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CostRequest &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.courier, courier) ||
                const DeepCollectionEquality().equals(other.courier, courier)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(courier);

  @JsonKey(ignore: true)
  @override
  _$CostRequestCopyWith<_CostRequest> get copyWith =>
      __$CostRequestCopyWithImpl<_CostRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CostRequestToJson(this);
  }
}

abstract class _CostRequest implements CostRequest {
  factory _CostRequest(
      {String origin,
      String destination,
      int weight,
      String courier}) = _$_CostRequest;

  factory _CostRequest.fromJson(Map<String, dynamic> json) =
      _$_CostRequest.fromJson;

  @override
  String get origin => throw _privateConstructorUsedError;
  @override
  String get destination => throw _privateConstructorUsedError;
  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  String get courier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CostRequestCopyWith<_CostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
