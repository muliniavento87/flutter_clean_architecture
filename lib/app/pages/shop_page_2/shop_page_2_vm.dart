
import 'package:data_module/data_module.dart';
import 'package:domain_module/usecases/retrive_catalogo_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shop_page_2_state.dart';


class ShopPage2VM extends StateNotifier<ShopPage2State> {
    final Ref ref;

    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //ShopPage2VM(this.ref, this.s) : super(ShopPage2Data(str: s)) {
    //    initAsync();
    //}

    ShopPage2VM(this.ref) : super(const ShopPage2Data()) {
        initAsync();
    }

    Future<void> initAsync() async {
        // elaborazioni varie
        //await getCatalogoShop();
    }

    /*
    ///
    Future<void> getCatalogoShop() async {
        state = state.copyWith(isLoading: true);
        // elaborazioni varie
        state = state.copyWith(
            catalogoShop: await ShopApiUseCase(ref.read(shopApiRepositoryProvider)).call().getCatalogo(),
            isLoading: false
        );
    }
    */
}

// Se ricevessimo una var stringa "s" da fuori
//final shopPage2Provider = StateNotifierProvider.autoDispose.family<ShopPage2VM, ShopPage2State, String>((ref, s) {
//  return ShopPage2VM(ref, s);
//});

/// vm provider
final shopPage2Provider = StateNotifierProvider.autoDispose<ShopPage2VM, ShopPage2State>((ref) {
    return ShopPage2VM(ref);
});

    