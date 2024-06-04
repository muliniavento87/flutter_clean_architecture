
import 'package:data_module/data_module.dart';
import 'package:domain_module/usecases/switch_theme_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shop_page_state.dart';


class ShopPageVM extends StateNotifier<ShopPageState> {
    final Ref ref;

    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //ShopPageVM(this.ref, this.s) : super(ShopPageData(str: s)) {
    //    initAsync();
    //}

    ShopPageVM(this.ref) : super(const ShopPageData()) {
        initAsync();
    }

    Future<void> initAsync() async {
        state = state.copyWith(isLoading: true);
        // elaborazioni varie
        state = state.copyWith(isLoading: false);
    }

    ///
    void switchTheme() {
        SwitchThemeUseCase(ref.read(appConfigRepositoryProvider)).call(ref);
    }

    ///
    void getCatalogoShop() {
        //GetCatalogoShopUseCase(ref.read(appConfigRepositoryProvider)).call(ref);
    }
}

// Se ricevessimo una var stringa "s" da fuori
//final shopPageProvider = StateNotifierProvider.autoDispose.family<ShopPageVM, ShopPageState, String>((ref, s) {
//  return ShopPageVM(ref, s);
//});

/// vm provider
final shopPageProvider = StateNotifierProvider.autoDispose<ShopPageVM, ShopPageState>((ref) {
    return ShopPageVM(ref);
});

    