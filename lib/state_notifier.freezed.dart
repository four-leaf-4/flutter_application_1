// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DisplayTextStateTearOff {
  const _$DisplayTextStateTearOff();

  _DisplayTextState call({required String displayText}) {
    return _DisplayTextState(
      displayText: displayText,
    );
  }
}

/// @nodoc
const $DisplayTextState = _$DisplayTextStateTearOff();

/// @nodoc
mixin _$DisplayTextState {
  String get displayText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DisplayTextStateCopyWith<DisplayTextState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayTextStateCopyWith<$Res> {
  factory $DisplayTextStateCopyWith(
          DisplayTextState value, $Res Function(DisplayTextState) then) =
      _$DisplayTextStateCopyWithImpl<$Res>;
  $Res call({String displayText});
}

/// @nodoc
class _$DisplayTextStateCopyWithImpl<$Res>
    implements $DisplayTextStateCopyWith<$Res> {
  _$DisplayTextStateCopyWithImpl(this._value, this._then);

  final DisplayTextState _value;
  // ignore: unused_field
  final $Res Function(DisplayTextState) _then;

  @override
  $Res call({
    Object? displayText = freezed,
  }) {
    return _then(_value.copyWith(
      displayText: displayText == freezed
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DisplayTextStateCopyWith<$Res>
    implements $DisplayTextStateCopyWith<$Res> {
  factory _$DisplayTextStateCopyWith(
          _DisplayTextState value, $Res Function(_DisplayTextState) then) =
      __$DisplayTextStateCopyWithImpl<$Res>;
  @override
  $Res call({String displayText});
}

/// @nodoc
class __$DisplayTextStateCopyWithImpl<$Res>
    extends _$DisplayTextStateCopyWithImpl<$Res>
    implements _$DisplayTextStateCopyWith<$Res> {
  __$DisplayTextStateCopyWithImpl(
      _DisplayTextState _value, $Res Function(_DisplayTextState) _then)
      : super(_value, (v) => _then(v as _DisplayTextState));

  @override
  _DisplayTextState get _value => super._value as _DisplayTextState;

  @override
  $Res call({
    Object? displayText = freezed,
  }) {
    return _then(_DisplayTextState(
      displayText: displayText == freezed
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DisplayTextState implements _DisplayTextState {
  const _$_DisplayTextState({required this.displayText});

  @override
  final String displayText;

  @override
  String toString() {
    return 'DisplayTextState(displayText: $displayText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisplayTextState &&
            const DeepCollectionEquality()
                .equals(other.displayText, displayText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(displayText));

  @JsonKey(ignore: true)
  @override
  _$DisplayTextStateCopyWith<_DisplayTextState> get copyWith =>
      __$DisplayTextStateCopyWithImpl<_DisplayTextState>(this, _$identity);
}

abstract class _DisplayTextState implements DisplayTextState {
  const factory _DisplayTextState({required String displayText}) =
      _$_DisplayTextState;

  @override
  String get displayText;
  @override
  @JsonKey(ignore: true)
  _$DisplayTextStateCopyWith<_DisplayTextState> get copyWith =>
      throw _privateConstructorUsedError;
}
