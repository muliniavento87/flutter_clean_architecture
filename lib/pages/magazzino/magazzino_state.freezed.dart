// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'magazzino_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MagazzinoState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MagazzinoStateCopyWith<MagazzinoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MagazzinoStateCopyWith<$Res> {
  factory $MagazzinoStateCopyWith(
          MagazzinoState value, $Res Function(MagazzinoState) then) =
      _$MagazzinoStateCopyWithImpl<$Res, MagazzinoState>;
  @useResult
  $Res call({bool isLoading, List<Book> books});
}

/// @nodoc
class _$MagazzinoStateCopyWithImpl<$Res, $Val extends MagazzinoState>
    implements $MagazzinoStateCopyWith<$Res> {
  _$MagazzinoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MagazzinoDataImplCopyWith<$Res>
    implements $MagazzinoStateCopyWith<$Res> {
  factory _$$MagazzinoDataImplCopyWith(
          _$MagazzinoDataImpl value, $Res Function(_$MagazzinoDataImpl) then) =
      __$$MagazzinoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Book> books});
}

/// @nodoc
class __$$MagazzinoDataImplCopyWithImpl<$Res>
    extends _$MagazzinoStateCopyWithImpl<$Res, _$MagazzinoDataImpl>
    implements _$$MagazzinoDataImplCopyWith<$Res> {
  __$$MagazzinoDataImplCopyWithImpl(
      _$MagazzinoDataImpl _value, $Res Function(_$MagazzinoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? books = null,
  }) {
    return _then(_$MagazzinoDataImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$MagazzinoDataImpl implements MagazzinoData {
  const _$MagazzinoDataImpl(
      {this.isLoading = false, final List<Book> books = const []})
      : _books = books;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Book> _books;
  @override
  @JsonKey()
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'MagazzinoState(isLoading: $isLoading, books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MagazzinoDataImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MagazzinoDataImplCopyWith<_$MagazzinoDataImpl> get copyWith =>
      __$$MagazzinoDataImplCopyWithImpl<_$MagazzinoDataImpl>(this, _$identity);
}

abstract class MagazzinoData implements MagazzinoState {
  const factory MagazzinoData({final bool isLoading, final List<Book> books}) =
      _$MagazzinoDataImpl;

  @override
  bool get isLoading;
  @override
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$$MagazzinoDataImplCopyWith<_$MagazzinoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
