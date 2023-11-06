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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokensDTO _$TokensDTOFromJson(Map<String, dynamic> json) {
  return _TokensDTO.fromJson(json);
}

/// @nodoc
mixin _$TokensDTO {
  String get idToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_TokensDTOCopyWith<$Res> implements $TokensDTOCopyWith<$Res> {
  factory _$$_TokensDTOCopyWith(
          _$_TokensDTO value, $Res Function(_$_TokensDTO) then) =
      __$$_TokensDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idToken, String refreshToken});
}

/// @nodoc
class __$$_TokensDTOCopyWithImpl<$Res>
    extends _$TokensDTOCopyWithImpl<$Res, _$_TokensDTO>
    implements _$$_TokensDTOCopyWith<$Res> {
  __$$_TokensDTOCopyWithImpl(
      _$_TokensDTO _value, $Res Function(_$_TokensDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_TokensDTO(
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
class _$_TokensDTO implements _TokensDTO {
  const _$_TokensDTO({required this.idToken, required this.refreshToken});

  factory _$_TokensDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TokensDTOFromJson(json);

  @override
  final String idToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'TokensDTO(idToken: $idToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokensDTO &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokensDTOCopyWith<_$_TokensDTO> get copyWith =>
      __$$_TokensDTOCopyWithImpl<_$_TokensDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokensDTOToJson(
      this,
    );
  }
}

abstract class _TokensDTO implements TokensDTO {
  const factory _TokensDTO(
      {required final String idToken,
      required final String refreshToken}) = _$_TokensDTO;

  factory _TokensDTO.fromJson(Map<String, dynamic> json) =
      _$_TokensDTO.fromJson;

  @override
  String get idToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_TokensDTOCopyWith<_$_TokensDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
