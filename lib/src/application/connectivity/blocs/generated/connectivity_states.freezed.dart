// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../connectivity_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectivityInitialState value) initial,
    required TResult Function(_ConnectivityConnectedState value) connected,
    required TResult Function(_ConnectivityLoadingState value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectivityInitialState value)? initial,
    TResult? Function(_ConnectivityConnectedState value)? connected,
    TResult? Function(_ConnectivityLoadingState value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectivityInitialState value)? initial,
    TResult Function(_ConnectivityConnectedState value)? connected,
    TResult Function(_ConnectivityLoadingState value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ConnectivityInitialStateCopyWith<$Res> {
  factory _$$_ConnectivityInitialStateCopyWith(
          _$_ConnectivityInitialState value,
          $Res Function(_$_ConnectivityInitialState) then) =
      __$$_ConnectivityInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectivityInitialStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$_ConnectivityInitialState>
    implements _$$_ConnectivityInitialStateCopyWith<$Res> {
  __$$_ConnectivityInitialStateCopyWithImpl(_$_ConnectivityInitialState _value,
      $Res Function(_$_ConnectivityInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConnectivityInitialState implements _ConnectivityInitialState {
  const _$_ConnectivityInitialState();

  @override
  String toString() {
    return 'ConnectivityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
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
    required TResult Function(_ConnectivityInitialState value) initial,
    required TResult Function(_ConnectivityConnectedState value) connected,
    required TResult Function(_ConnectivityLoadingState value) disconnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectivityInitialState value)? initial,
    TResult? Function(_ConnectivityConnectedState value)? connected,
    TResult? Function(_ConnectivityLoadingState value)? disconnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectivityInitialState value)? initial,
    TResult Function(_ConnectivityConnectedState value)? connected,
    TResult Function(_ConnectivityLoadingState value)? disconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ConnectivityInitialState implements ConnectivityState {
  const factory _ConnectivityInitialState() = _$_ConnectivityInitialState;
}

/// @nodoc
abstract class _$$_ConnectivityConnectedStateCopyWith<$Res> {
  factory _$$_ConnectivityConnectedStateCopyWith(
          _$_ConnectivityConnectedState value,
          $Res Function(_$_ConnectivityConnectedState) then) =
      __$$_ConnectivityConnectedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectivityConnectedStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$_ConnectivityConnectedState>
    implements _$$_ConnectivityConnectedStateCopyWith<$Res> {
  __$$_ConnectivityConnectedStateCopyWithImpl(
      _$_ConnectivityConnectedState _value,
      $Res Function(_$_ConnectivityConnectedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConnectivityConnectedState implements _ConnectivityConnectedState {
  const _$_ConnectivityConnectedState();

  @override
  String toString() {
    return 'ConnectivityState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityConnectedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectivityInitialState value) initial,
    required TResult Function(_ConnectivityConnectedState value) connected,
    required TResult Function(_ConnectivityLoadingState value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectivityInitialState value)? initial,
    TResult? Function(_ConnectivityConnectedState value)? connected,
    TResult? Function(_ConnectivityLoadingState value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectivityInitialState value)? initial,
    TResult Function(_ConnectivityConnectedState value)? connected,
    TResult Function(_ConnectivityLoadingState value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _ConnectivityConnectedState implements ConnectivityState {
  const factory _ConnectivityConnectedState() = _$_ConnectivityConnectedState;
}

/// @nodoc
abstract class _$$_ConnectivityLoadingStateCopyWith<$Res> {
  factory _$$_ConnectivityLoadingStateCopyWith(
          _$_ConnectivityLoadingState value,
          $Res Function(_$_ConnectivityLoadingState) then) =
      __$$_ConnectivityLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectivityLoadingStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$_ConnectivityLoadingState>
    implements _$$_ConnectivityLoadingStateCopyWith<$Res> {
  __$$_ConnectivityLoadingStateCopyWithImpl(_$_ConnectivityLoadingState _value,
      $Res Function(_$_ConnectivityLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConnectivityLoadingState implements _ConnectivityLoadingState {
  const _$_ConnectivityLoadingState();

  @override
  String toString() {
    return 'ConnectivityState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectivityInitialState value) initial,
    required TResult Function(_ConnectivityConnectedState value) connected,
    required TResult Function(_ConnectivityLoadingState value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectivityInitialState value)? initial,
    TResult? Function(_ConnectivityConnectedState value)? connected,
    TResult? Function(_ConnectivityLoadingState value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectivityInitialState value)? initial,
    TResult Function(_ConnectivityConnectedState value)? connected,
    TResult Function(_ConnectivityLoadingState value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _ConnectivityLoadingState implements ConnectivityState {
  const factory _ConnectivityLoadingState() = _$_ConnectivityLoadingState;
}
