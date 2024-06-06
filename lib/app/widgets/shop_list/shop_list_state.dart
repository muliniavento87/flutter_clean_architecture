import 'package:domain_module/models/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shop_list_state.freezed.dart';

@freezed
class ShopListState with _$ShopListState {
const factory ShopListState({
    // Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
    //String? str,
    @Default(false) bool isLoading,
    @Default([]) List<Book> catalogoShop,
}) = ShopListData;
}

    