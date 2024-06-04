// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_page_2_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopPage2State {
// Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
//String? str,
  bool get isLoading => throw _privateConstructorUsedError;
  List<Book> get catalogoShop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopPage2StateCopyWith<ShopPage2State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPage2StateCopyWith<$Res> {
  factory $ShopPage2StateCopyWith(
          ShopPage2State value, $Res Function(ShopPage2State) then) =
      _$ShopPage2StateCopyWithImpl<$Res, ShopPage2State>;
  @useResult
  $Res call({bool isLoading, List<Book> catalogoShop});
}

/// @nodoc
class _$ShopPage2StateCopyWithImpl<$Res, $Val extends ShopPage2State>
    implements $ShopPage2StateCopyWith<$Res> {
  _$ShopPage2StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? catalogoShop = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      catalogoShop: null == catalogoShop
          ? _value.catalogoShop
          : catalogoShop // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopPage2DataImplCopyWith<$Res>
    implements $ShopPage2StateCopyWith<$Res> {
  factory _$$ShopPage2DataImplCopyWith(
          _$ShopPage2DataImpl value, $Res Function(_$ShopPage2DataImpl) then) =
      __$$ShopPage2DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Book> catalogoShop});
}

/// @nodoc
class __$$ShopPage2DataImplCopyWithImpl<$Res>
    extends _$ShopPage2StateCopyWithImpl<$Res, _$ShopPage2DataImpl>
    implements _$$ShopPage2DataImplCopyWith<$Res> {
  __$$ShopPage2DataImplCopyWithImpl(
      _$ShopPage2DataImpl _value, $Res Function(_$ShopPage2DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? catalogoShop = null,
  }) {
    return _then(_$ShopPage2DataImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      catalogoShop: null == catalogoShop
          ? _value._catalogoShop
          : catalogoShop // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$ShopPage2DataImpl implements ShopPage2Data {
  const _$ShopPage2DataImpl(
      {this.isLoading = false, final List<Book> catalogoShop = const []})
      : _catalogoShop = catalogoShop;

// Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
//String? str,
  @override
  @JsonKey()
  final bool isLoading;
  final List<Book> _catalogoShop;
  @override
  @JsonKey()
  List<Book> get catalogoShop {
    if (_catalogoShop is EqualUnmodifiableListView) return _catalogoShop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catalogoShop);
  }

  @override
  String toString() {
    return 'ShopPage2State(isLoading: $isLoading, catalogoShop: $catalogoShop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopPage2DataImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._catalogoShop, _catalogoShop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_catalogoShop));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopPage2DataImplCopyWith<_$ShopPage2DataImpl> get copyWith =>
      __$$ShopPage2DataImplCopyWithImpl<_$ShopPage2DataImpl>(this, _$identity);
}

abstract class ShopPage2Data implements ShopPage2State {
  const factory ShopPage2Data(
      {final bool isLoading,
      final List<Book> catalogoShop}) = _$ShopPage2DataImpl;

  @override // Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
//String? str,
  bool get isLoading;
  @override
  List<Book> get catalogoShop;
  @override
  @JsonKey(ignore: true)
  _$$ShopPage2DataImplCopyWith<_$ShopPage2DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
