// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cost_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostResponse _$CostResponseFromJson(Map<String, dynamic> json) {
  return _CostResponse.fromJson(json);
}

/// @nodoc
class _$CostResponseTearOff {
  const _$CostResponseTearOff();

  _CostResponse call(
      {@JsonKey(name: 'origin_details') City? originDetails,
      @JsonKey(name: 'destination_details') City? destinationDetails,
      List<CostResults> results = const <CostResults>[]}) {
    return _CostResponse(
      originDetails: originDetails,
      destinationDetails: destinationDetails,
      results: results,
    );
  }

  CostResponse fromJson(Map<String, Object> json) {
    return CostResponse.fromJson(json);
  }
}

/// @nodoc
const $CostResponse = _$CostResponseTearOff();

/// @nodoc
mixin _$CostResponse {
  @JsonKey(name: 'origin_details')
  City? get originDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_details')
  City? get destinationDetails => throw _privateConstructorUsedError;
  List<CostResults> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostResponseCopyWith<CostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostResponseCopyWith<$Res> {
  factory $CostResponseCopyWith(
          CostResponse value, $Res Function(CostResponse) then) =
      _$CostResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'origin_details') City? originDetails,
      @JsonKey(name: 'destination_details') City? destinationDetails,
      List<CostResults> results});

  $CityCopyWith<$Res>? get originDetails;
  $CityCopyWith<$Res>? get destinationDetails;
}

/// @nodoc
class _$CostResponseCopyWithImpl<$Res> implements $CostResponseCopyWith<$Res> {
  _$CostResponseCopyWithImpl(this._value, this._then);

  final CostResponse _value;
  // ignore: unused_field
  final $Res Function(CostResponse) _then;

  @override
  $Res call({
    Object? originDetails = freezed,
    Object? destinationDetails = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      originDetails: originDetails == freezed
          ? _value.originDetails
          : originDetails // ignore: cast_nullable_to_non_nullable
              as City?,
      destinationDetails: destinationDetails == freezed
          ? _value.destinationDetails
          : destinationDetails // ignore: cast_nullable_to_non_nullable
              as City?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CostResults>,
    ));
  }

  @override
  $CityCopyWith<$Res>? get originDetails {
    if (_value.originDetails == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.originDetails!, (value) {
      return _then(_value.copyWith(originDetails: value));
    });
  }

  @override
  $CityCopyWith<$Res>? get destinationDetails {
    if (_value.destinationDetails == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.destinationDetails!, (value) {
      return _then(_value.copyWith(destinationDetails: value));
    });
  }
}

/// @nodoc
abstract class _$CostResponseCopyWith<$Res>
    implements $CostResponseCopyWith<$Res> {
  factory _$CostResponseCopyWith(
          _CostResponse value, $Res Function(_CostResponse) then) =
      __$CostResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'origin_details') City? originDetails,
      @JsonKey(name: 'destination_details') City? destinationDetails,
      List<CostResults> results});

  @override
  $CityCopyWith<$Res>? get originDetails;
  @override
  $CityCopyWith<$Res>? get destinationDetails;
}

/// @nodoc
class __$CostResponseCopyWithImpl<$Res> extends _$CostResponseCopyWithImpl<$Res>
    implements _$CostResponseCopyWith<$Res> {
  __$CostResponseCopyWithImpl(
      _CostResponse _value, $Res Function(_CostResponse) _then)
      : super(_value, (v) => _then(v as _CostResponse));

  @override
  _CostResponse get _value => super._value as _CostResponse;

  @override
  $Res call({
    Object? originDetails = freezed,
    Object? destinationDetails = freezed,
    Object? results = freezed,
  }) {
    return _then(_CostResponse(
      originDetails: originDetails == freezed
          ? _value.originDetails
          : originDetails // ignore: cast_nullable_to_non_nullable
              as City?,
      destinationDetails: destinationDetails == freezed
          ? _value.destinationDetails
          : destinationDetails // ignore: cast_nullable_to_non_nullable
              as City?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CostResults>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostResponse implements _CostResponse {
  _$_CostResponse(
      {@JsonKey(name: 'origin_details') this.originDetails,
      @JsonKey(name: 'destination_details') this.destinationDetails,
      this.results = const <CostResults>[]});

  factory _$_CostResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CostResponseFromJson(json);

  @override
  @JsonKey(name: 'origin_details')
  final City? originDetails;
  @override
  @JsonKey(name: 'destination_details')
  final City? destinationDetails;
  @JsonKey(defaultValue: const <CostResults>[])
  @override
  final List<CostResults> results;

  @override
  String toString() {
    return 'CostResponse(originDetails: $originDetails, destinationDetails: $destinationDetails, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CostResponse &&
            (identical(other.originDetails, originDetails) ||
                const DeepCollectionEquality()
                    .equals(other.originDetails, originDetails)) &&
            (identical(other.destinationDetails, destinationDetails) ||
                const DeepCollectionEquality()
                    .equals(other.destinationDetails, destinationDetails)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(originDetails) ^
      const DeepCollectionEquality().hash(destinationDetails) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$CostResponseCopyWith<_CostResponse> get copyWith =>
      __$CostResponseCopyWithImpl<_CostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CostResponseToJson(this);
  }
}

abstract class _CostResponse implements CostResponse {
  factory _CostResponse(
      {@JsonKey(name: 'origin_details') City? originDetails,
      @JsonKey(name: 'destination_details') City? destinationDetails,
      List<CostResults> results}) = _$_CostResponse;

  factory _CostResponse.fromJson(Map<String, dynamic> json) =
      _$_CostResponse.fromJson;

  @override
  @JsonKey(name: 'origin_details')
  City? get originDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'destination_details')
  City? get destinationDetails => throw _privateConstructorUsedError;
  @override
  List<CostResults> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CostResponseCopyWith<_CostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
