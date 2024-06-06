import 'package:domain_module/models/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_page_state.freezed.dart';

@freezed
class CartPageState with _$CartPageState {
const factory CartPageState({
    @Default(false) bool isLoading,
    @Default([]) List<Book> books,
}) = CartPageData;
}

    