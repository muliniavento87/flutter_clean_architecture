
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shop_page_state.freezed.dart';

@freezed
class ShopPageState with _$ShopPageState {
const factory ShopPageState({
    // Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
    //String? str,
    @Default(false) bool isLoading,
}) = ShopPageData;
}

    