import 'package:domain_module/models/Book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shop_state.freezed.dart';

@freezed
class ShopState with _$ShopState {
const factory ShopState({
    @Default(false) bool isLoading,
    @Default([]) List<Book> books
}) = ShopData;
}

    