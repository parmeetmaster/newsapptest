// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiSuccessResponse _$ApiSuccessResponseFromJson(Map<String, dynamic> json) {
  return _ApiSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiSuccessResponse {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get timeStamp => throw _privateConstructorUsedError;

  /// Serializes this ApiSuccessResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiSuccessResponseCopyWith<ApiSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiSuccessResponseCopyWith<$Res> {
  factory $ApiSuccessResponseCopyWith(
          ApiSuccessResponse value, $Res Function(ApiSuccessResponse) then) =
      _$ApiSuccessResponseCopyWithImpl<$Res, ApiSuccessResponse>;
  @useResult
  $Res call({int statusCode, String message, String timeStamp});
}

/// @nodoc
class _$ApiSuccessResponseCopyWithImpl<$Res, $Val extends ApiSuccessResponse>
    implements $ApiSuccessResponseCopyWith<$Res> {
  _$ApiSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? timeStamp = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiSuccessResponseImplCopyWith<$Res>
    implements $ApiSuccessResponseCopyWith<$Res> {
  factory _$$ApiSuccessResponseImplCopyWith(_$ApiSuccessResponseImpl value,
          $Res Function(_$ApiSuccessResponseImpl) then) =
      __$$ApiSuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String message, String timeStamp});
}

/// @nodoc
class __$$ApiSuccessResponseImplCopyWithImpl<$Res>
    extends _$ApiSuccessResponseCopyWithImpl<$Res, _$ApiSuccessResponseImpl>
    implements _$$ApiSuccessResponseImplCopyWith<$Res> {
  __$$ApiSuccessResponseImplCopyWithImpl(_$ApiSuccessResponseImpl _value,
      $Res Function(_$ApiSuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? timeStamp = null,
  }) {
    return _then(_$ApiSuccessResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiSuccessResponseImpl implements _ApiSuccessResponse {
  const _$ApiSuccessResponseImpl(
      {required this.statusCode,
      required this.message,
      required this.timeStamp});

  factory _$ApiSuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiSuccessResponseImplFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;
  @override
  final String timeStamp;

  @override
  String toString() {
    return 'ApiSuccessResponse(statusCode: $statusCode, message: $message, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSuccessResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, timeStamp);

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSuccessResponseImplCopyWith<_$ApiSuccessResponseImpl> get copyWith =>
      __$$ApiSuccessResponseImplCopyWithImpl<_$ApiSuccessResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _ApiSuccessResponse implements ApiSuccessResponse {
  const factory _ApiSuccessResponse(
      {required final int statusCode,
      required final String message,
      required final String timeStamp}) = _$ApiSuccessResponseImpl;

  factory _ApiSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$ApiSuccessResponseImpl.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  String get timeStamp;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiSuccessResponseImplCopyWith<_$ApiSuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
