import 'package:domain_module/models/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shop_page_2_state.freezed.dart';

@freezed
class ShopPage2State with _$ShopPage2State {
const factory ShopPage2State({
    // Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
    //String? str,
    @Default(false) bool isLoading,
    @Default([]) List<Book> catalogoShop,
}) = ShopPage2Data;
}

    