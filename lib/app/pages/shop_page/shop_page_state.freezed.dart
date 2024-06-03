// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopPageState {
// Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
//String? str,
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopPageStateCopyWith<ShopPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPageStateCopyWith<$Res> {
  factory $ShopPageStateCopyWith(
          ShopPageState value, $Res Function(ShopPageState) then) =
      _$ShopPageStateCopyWithImpl<$Res, ShopPageState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$ShopPageStateCopyWithImpl<$Res, $Val extends ShopPageState>
    implements $ShopPageStateCopyWith<$Res> {
  _$ShopPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopPageDataImplCopyWith<$Res>
    implements $ShopPageStateCopyWith<$Res> {
  factory _$$ShopPageDataImplCopyWith(
          _$ShopPageDataImpl value, $Res Function(_$ShopPageDataImpl) then) =
      __$$ShopPageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$ShopPageDataImplCopyWithImpl<$Res>
    extends _$ShopPageStateCopyWithImpl<$Res, _$ShopPageDataImpl>
    implements _$$ShopPageDataImplCopyWith<$Res> {
  __$$ShopPageDataImplCopyWithImpl(
      _$ShopPageDataImpl _value, $Res Function(_$ShopPageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$ShopPageDataImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShopPageDataImpl implements ShopPageData {
  const _$ShopPageDataImpl({this.isLoading = false});

// Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
//String? str,
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ShopPageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopPageDataImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopPageDataImplCopyWith<_$ShopPageDataImpl> get copyWith =>
      __$$ShopPageDataImplCopyWithImpl<_$ShopPageDataImpl>(this, _$identity);
}

abstract class ShopPageData implements ShopPageState {
  const factory ShopPageData({final bool isLoading}) = _$ShopPageDataImpl;

  @override // Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
//String? str,
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$ShopPageDataImplCopyWith<_$ShopPageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
