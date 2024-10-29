// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiErrorResponse _$ApiErrorResponseFromJson(Map<String, dynamic> json) {
  return _ApiErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiErrorResponse {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ApiErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiErrorResponseCopyWith<ApiErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorResponseCopyWith<$Res> {
  factory $ApiErrorResponseCopyWith(
          ApiErrorResponse value, $Res Function(ApiErrorResponse) then) =
      _$ApiErrorResponseCopyWithImpl<$Res, ApiErrorResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$ApiErrorResponseCopyWithImpl<$Res, $Val extends ApiErrorResponse>
    implements $ApiErrorResponseCopyWith<$Res> {
  _$ApiErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiErrorResponseImplCopyWith<$Res>
    implements $ApiErrorResponseCopyWith<$Res> {
  factory _$$ApiErrorResponseImplCopyWith(_$ApiErrorResponseImpl value,
          $Res Function(_$ApiErrorResponseImpl) then) =
      __$$ApiErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$ApiErrorResponseImplCopyWithImpl<$Res>
    extends _$ApiErrorResponseCopyWithImpl<$Res, _$ApiErrorResponseImpl>
    implements _$$ApiErrorResponseImplCopyWith<$Res> {
  __$$ApiErrorResponseImplCopyWithImpl(_$ApiErrorResponseImpl _value,
      $Res Function(_$ApiErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ApiErrorResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorResponseImpl implements _ApiErrorResponse {
  const _$ApiErrorResponseImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message});

  factory _$ApiErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'ApiErrorResponse(status: $status, code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message);

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorResponseImplCopyWith<_$ApiErrorResponseImpl> get copyWith =>
      __$$ApiErrorResponseImplCopyWithImpl<_$ApiErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _ApiErrorResponse implements ApiErrorResponse {
  const factory _ApiErrorResponse(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message}) =
      _$ApiErrorResponseImpl;

  factory _ApiErrorResponse.fromJson(Map<String, dynamic> json) =
      _$ApiErrorResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "message")
  String? get message;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiErrorResponseImplCopyWith<_$ApiErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
