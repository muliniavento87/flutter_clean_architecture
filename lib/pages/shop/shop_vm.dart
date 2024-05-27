import 'package:domain_module/usecases/get_catalogo_shop_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shop_state.dart';


class ShopVM extends StateNotifier<ShopState> {
    final Ref ref;

    ShopVM(this.ref) : super(const ShopData()) {
        // init
        getCatalogo();
    }

    ///
    getCatalogo() async {
        state = state.copyWith(isLoading: true);
        // elaborazioni varie
        state = state.copyWith(
            books: await GetCatalogoShopUsecase().call(),
            isLoading: false
        );
    }
}

/// vm provider
final shopProvider = StateNotifierProvider.autoDispose<ShopVM, ShopState>((ref) {
    return ShopVM(ref);
});

    