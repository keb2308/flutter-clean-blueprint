// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tokens_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokensDTO _$TokensDTOFromJson(Map<String, dynamic> json) {
  return _TokensDTO.fromJson(json);
}

/// @nodoc
mixin _$TokensDTO {
  String get idToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this TokensDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokensDTOCopyWith<TokensDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensDTOCopyWith<$Res> {
  factory $TokensDTOCopyWith(TokensDTO value, $Res Function(TokensDTO) then) =
      _$TokensDTOCopyWithImpl<$Res, TokensDTO>;
  @useResult
  $Res call({String idToken, String refreshToken});
}

/// @nodoc
class _$TokensDTOCopyWithImpl<$Res, $Val extends TokensDTO>
    implements $TokensDTOCopyWith<$Res> {
  _$TokensDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokensDTOImplCopyWith<$Res>
    implements $TokensDTOCopyWith<$Res> {
  factory _$$TokensDTOImplCopyWith(
          _$TokensDTOImpl value, $Res Function(_$TokensDTOImpl) then) =
      __$$TokensDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idToken, String refreshToken});
}

/// @nodoc
class __$$TokensDTOImplCopyWithImpl<$Res>
    extends _$TokensDTOCopyWithImpl<$Res, _$TokensDTOImpl>
    implements _$$TokensDTOImplCopyWith<$Res> {
  __$$TokensDTOImplCopyWithImpl(
      _$TokensDTOImpl _value, $Res Function(_$TokensDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$TokensDTOImpl(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokensDTOImpl implements _TokensDTO {
  const _$TokensDTOImpl({required this.idToken, required this.refreshToken});

  factory _$TokensDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokensDTOImplFromJson(json);

  @override
  final String idToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'TokensDTO(idToken: $idToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokensDTOImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idToken, refreshToken);

  /// Create a copy of TokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokensDTOImplCopyWith<_$TokensDTOImpl> get copyWith =>
      __$$TokensDTOImplCopyWithImpl<_$TokensDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokensDTOImplToJson(
      this,
    );
  }
}

abstract class _TokensDTO implements TokensDTO {
  const factory _TokensDTO(
      {required final String idToken,
      required final String refreshToken}) = _$TokensDTOImpl;

  factory _TokensDTO.fromJson(Map<String, dynamic> json) =
      _$TokensDTOImpl.fromJson;

  @override
  String get idToken;
  @override
  String get refreshToken;

  /// Create a copy of TokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokensDTOImplCopyWith<_$TokensDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
