
import 'package:data_module/data_module.dart';
import 'package:domain_module/usecases/retrieve_current_cart_usecase.dart';
import 'package:domain_module/usecases/retrive_catalogo_usecase.dart';
import 'package:domain_module/usecases/switch_theme_usecase.dart';
import 'package:flutter_clean_architecture/app/ext/ext.dart';
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
        // elaborazioni varie
        getCatalogoShop();
        registerToCart();
        //initListeners(ref);
    }

    ///
    void switchTheme() {
        SwitchThemeUseCase(ref.read(appConfigRepositoryProvider)).call(ref);
    }

    ///
    Future<void> getCatalogoShop() async {
        state = state.copyWith(isLoading: true);
        // elaborazioni varie
        RetrieveCatalogoUseCase(ref.readShopRepProv).call()
        .then((value) =>  state = state.copyWith(
            catalogoShop: value,
            isLoading: false
        )).onError((error, stackTrace) => state = state.copyWith(isLoading: false,)); //TODO manage error

    }

    void registerToCart(){
        var listner = ref.listen(RetrieveCurrentCartUseCase(ref.readCartRepProv).call(), (previous, next) {

        });
        //listner.close()
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




    