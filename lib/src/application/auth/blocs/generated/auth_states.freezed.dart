// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../auth_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthInitialStateCopyWith<$Res> {
  factory _$$_AuthInitialStateCopyWith(
          _$_AuthInitialState value, $Res Function(_$_AuthInitialState) then) =
      __$$_AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthInitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthInitialState>
    implements _$$_AuthInitialStateCopyWith<$Res> {
  __$$_AuthInitialStateCopyWithImpl(
      _$_AuthInitialState _value, $Res Function(_$_AuthInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthInitialState implements _AuthInitialState {
  const _$_AuthInitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitialState implements AuthState {
  const factory _AuthInitialState() = _$_AuthInitialState;
}

/// @nodoc
abstract class _$$_AuthLoadingStateCopyWith<$Res> {
  factory _$$_AuthLoadingStateCopyWith(
          _$_AuthLoadingState value, $Res Function(_$_AuthLoadingState) then) =
      __$$_AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthLoadingState>
    implements _$$_AuthLoadingStateCopyWith<$Res> {
  __$$_AuthLoadingStateCopyWithImpl(
      _$_AuthLoadingState _value, $Res Function(_$_AuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthLoadingState implements _AuthLoadingState {
  const _$_AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoadingState implements AuthState {
  const factory _AuthLoadingState() = _$_AuthLoadingState;
}

/// @nodoc
abstract class _$$_AuthAuthenticatedStateCopyWith<$Res> {
  factory _$$_AuthAuthenticatedStateCopyWith(_$_AuthAuthenticatedState value,
          $Res Function(_$_AuthAuthenticatedState) then) =
      __$$_AuthAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthAuthenticatedState>
    implements _$$_AuthAuthenticatedStateCopyWith<$Res> {
  __$$_AuthAuthenticatedStateCopyWithImpl(_$_AuthAuthenticatedState _value,
      $Res Function(_$_AuthAuthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthAuthenticatedState implements _AuthAuthenticatedState {
  const _$_AuthAuthenticatedState();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticatedState implements AuthState {
  const factory _AuthAuthenticatedState() = _$_AuthAuthenticatedState;
}

/// @nodoc
abstract class _$$_AuthUnauthenticatedStateCopyWith<$Res> {
  factory _$$_AuthUnauthenticatedStateCopyWith(
          _$_AuthUnauthenticatedState value,
          $Res Function(_$_AuthUnauthenticatedState) then) =
      __$$_AuthUnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthUnauthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthUnauthenticatedState>
    implements _$$_AuthUnauthenticatedStateCopyWith<$Res> {
  __$$_AuthUnauthenticatedStateCopyWithImpl(_$_AuthUnauthenticatedState _value,
      $Res Function(_$_AuthUnauthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthUnauthenticatedState implements _AuthUnauthenticatedState {
  const _$_AuthUnauthenticatedState();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthUnauthenticatedState implements AuthState {
  const factory _AuthUnauthenticatedState() = _$_AuthUnauthenticatedState;
}

/// @nodoc
abstract class _$$_AuthErrorStateCopyWith<$Res> {
  factory _$$_AuthErrorStateCopyWith(
          _$_AuthErrorState value, $Res Function(_$_AuthErrorState) then) =
      __$$_AuthErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$_AuthErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthErrorState>
    implements _$$_AuthErrorStateCopyWith<$Res> {
  __$$_AuthErrorStateCopyWithImpl(
      _$_AuthErrorState _value, $Res Function(_$_AuthErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_AuthErrorState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_AuthErrorState implements _AuthErrorState {
  const _$_AuthErrorState({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthErrorState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthErrorStateCopyWith<_$_AuthErrorState> get copyWith =>
      __$$_AuthErrorStateCopyWithImpl<_$_AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorState implements AuthState {
  const factory _AuthErrorState({required final Failure failure}) =
      _$_AuthErrorState;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_AuthErrorStateCopyWith<_$_AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
