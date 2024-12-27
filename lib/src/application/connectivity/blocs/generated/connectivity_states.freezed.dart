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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectivityInitialStateImplCopyWith<$Res> {
  factory _$$ConnectivityInitialStateImplCopyWith(
          _$ConnectivityInitialStateImpl value,
          $Res Function(_$ConnectivityInitialStateImpl) then) =
      __$$ConnectivityInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityInitialStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res,
        _$ConnectivityInitialStateImpl>
    implements _$$ConnectivityInitialStateImplCopyWith<$Res> {
  __$$ConnectivityInitialStateImplCopyWithImpl(
      _$ConnectivityInitialStateImpl _value,
      $Res Function(_$ConnectivityInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityInitialStateImpl implements _ConnectivityInitialState {
  const _$ConnectivityInitialStateImpl();

  @override
  String toString() {
    return 'ConnectivityState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityInitialStateImpl);
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
  const factory _ConnectivityInitialState() = _$ConnectivityInitialStateImpl;
}

/// @nodoc
abstract class _$$ConnectivityConnectedStateImplCopyWith<$Res> {
  factory _$$ConnectivityConnectedStateImplCopyWith(
          _$ConnectivityConnectedStateImpl value,
          $Res Function(_$ConnectivityConnectedStateImpl) then) =
      __$$ConnectivityConnectedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityConnectedStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res,
        _$ConnectivityConnectedStateImpl>
    implements _$$ConnectivityConnectedStateImplCopyWith<$Res> {
  __$$ConnectivityConnectedStateImplCopyWithImpl(
      _$ConnectivityConnectedStateImpl _value,
      $Res Function(_$ConnectivityConnectedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityConnectedStateImpl implements _ConnectivityConnectedState {
  const _$ConnectivityConnectedStateImpl();

  @override
  String toString() {
    return 'ConnectivityState.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityConnectedStateImpl);
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
  const factory _ConnectivityConnectedState() =
      _$ConnectivityConnectedStateImpl;
}

/// @nodoc
abstract class _$$ConnectivityLoadingStateImplCopyWith<$Res> {
  factory _$$ConnectivityLoadingStateImplCopyWith(
          _$ConnectivityLoadingStateImpl value,
          $Res Function(_$ConnectivityLoadingStateImpl) then) =
      __$$ConnectivityLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityLoadingStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res,
        _$ConnectivityLoadingStateImpl>
    implements _$$ConnectivityLoadingStateImplCopyWith<$Res> {
  __$$ConnectivityLoadingStateImplCopyWithImpl(
      _$ConnectivityLoadingStateImpl _value,
      $Res Function(_$ConnectivityLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityLoadingStateImpl implements _ConnectivityLoadingState {
  const _$ConnectivityLoadingStateImpl();

  @override
  String toString() {
    return 'ConnectivityState.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityLoadingStateImpl);
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
  const factory _ConnectivityLoadingState() = _$ConnectivityLoadingStateImpl;
}
