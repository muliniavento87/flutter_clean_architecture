// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyAppState {
  ThemeData? get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyAppStateCopyWith<MyAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAppStateCopyWith<$Res> {
  factory $MyAppStateCopyWith(
          MyAppState value, $Res Function(MyAppState) then) =
      _$MyAppStateCopyWithImpl<$Res, MyAppState>;
  @useResult
  $Res call({ThemeData? theme});
}

/// @nodoc
class _$MyAppStateCopyWithImpl<$Res, $Val extends MyAppState>
    implements $MyAppStateCopyWith<$Res> {
  _$MyAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyAppDataImplCopyWith<$Res>
    implements $MyAppStateCopyWith<$Res> {
  factory _$$MyAppDataImplCopyWith(
          _$MyAppDataImpl value, $Res Function(_$MyAppDataImpl) then) =
      __$$MyAppDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData? theme});
}

/// @nodoc
class __$$MyAppDataImplCopyWithImpl<$Res>
    extends _$MyAppStateCopyWithImpl<$Res, _$MyAppDataImpl>
    implements _$$MyAppDataImplCopyWith<$Res> {
  __$$MyAppDataImplCopyWithImpl(
      _$MyAppDataImpl _value, $Res Function(_$MyAppDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_$MyAppDataImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc

class _$MyAppDataImpl implements MyAppData {
  const _$MyAppDataImpl({this.theme});

  @override
  final ThemeData? theme;

  @override
  String toString() {
    return 'MyAppState(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAppDataImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAppDataImplCopyWith<_$MyAppDataImpl> get copyWith =>
      __$$MyAppDataImplCopyWithImpl<_$MyAppDataImpl>(this, _$identity);
}

abstract class MyAppData implements MyAppState {
  const factory MyAppData({final ThemeData? theme}) = _$MyAppDataImpl;

  @override
  ThemeData? get theme;
  @override
  @JsonKey(ignore: true)
  _$$MyAppDataImplCopyWith<_$MyAppDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
