// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopListState {
// Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
//String? str,
  bool get isLoading => throw _privateConstructorUsedError;
  List<Book> get catalogoShop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopListStateCopyWith<ShopListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopListStateCopyWith<$Res> {
  factory $ShopListStateCopyWith(
          ShopListState value, $Res Function(ShopListState) then) =
      _$ShopListStateCopyWithImpl<$Res, ShopListState>;
  @useResult
  $Res call({bool isLoading, List<Book> catalogoShop});
}

/// @nodoc
class _$ShopListStateCopyWithImpl<$Res, $Val extends ShopListState>
    implements $ShopListStateCopyWith<$Res> {
  _$ShopListStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ShopListDataImplCopyWith<$Res>
    implements $ShopListStateCopyWith<$Res> {
  factory _$$ShopListDataImplCopyWith(
          _$ShopListDataImpl value, $Res Function(_$ShopListDataImpl) then) =
      __$$ShopListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Book> catalogoShop});
}

/// @nodoc
class __$$ShopListDataImplCopyWithImpl<$Res>
    extends _$ShopListStateCopyWithImpl<$Res, _$ShopListDataImpl>
    implements _$$ShopListDataImplCopyWith<$Res> {
  __$$ShopListDataImplCopyWithImpl(
      _$ShopListDataImpl _value, $Res Function(_$ShopListDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? catalogoShop = null,
  }) {
    return _then(_$ShopListDataImpl(
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

class _$ShopListDataImpl implements ShopListData {
  const _$ShopListDataImpl(
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
    return 'ShopListState(isLoading: $isLoading, catalogoShop: $catalogoShop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopListDataImpl &&
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
  _$$ShopListDataImplCopyWith<_$ShopListDataImpl> get copyWith =>
      __$$ShopListDataImplCopyWithImpl<_$ShopListDataImpl>(this, _$identity);
}

abstract class ShopListData implements ShopListState {
  const factory ShopListData(
      {final bool isLoading,
      final List<Book> catalogoShop}) = _$ShopListDataImpl;

  @override // Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
//String? str,
  bool get isLoading;
  @override
  List<Book> get catalogoShop;
  @override
  @JsonKey(ignore: true)
  _$$ShopListDataImplCopyWith<_$ShopListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
