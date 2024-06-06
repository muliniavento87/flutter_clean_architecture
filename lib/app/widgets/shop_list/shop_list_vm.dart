
import 'package:domain_module/models/book.dart';
import 'package:domain_module/usecases/retrieve_current_cart_usecase.dart';
import 'package:domain_module/usecases/retrive_catalogo_usecase.dart';
import 'package:flutter_clean_architecture/app/ext/ext.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shop_list_state.dart';


class ShopListVM extends StateNotifier<ShopListState> {
    final Ref ref;

    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //ShopListVM(this.ref, this.s) : super(ShopListData(str: s)) {
    //    initAsync();
    //}

    ShopListVM(this.ref) : super(const ShopListData()) {
        initAsync();
    }

    Future<void> initAsync() async {
        state = state.copyWith(isLoading: true);
        // elaborazioni varie
        getCatalogoShop();
        listenerGetCatalogoShop();
        state = state.copyWith(isLoading: false);
    }

    ///
    void getCatalogoShop() {
        state = state.copyWith(isLoading: true);
        // elaborazioni varie
        List<Book> currentCart = ref.read(RetrieveCurrentCartUseCase(ref.readCartRepProv).call());
        RetrieveCatalogoUseCase(ref.readShopRepProv).call()
            .then((value) =>  state = state.copyWith(
            // filtro il catalogo nascondendo quelli già nel carrello
            catalogoShop: value.where((obj) => !(currentCart.map((e) => e.id).toList()).contains(obj.id)).toList(),
            isLoading: false
        )).onError((error, stackTrace) => state = state.copyWith(isLoading: false,)); //TODO manage error
    }
    ///
    void listenerGetCatalogoShop() {
        var listener = ref.listen(RetrieveCurrentCartUseCase(ref.readCartRepProv).call(), (previous, next) {
            //getCatalogoShop();
            getCatalogoShop();
        });
    }
}

// Se ricevessimo una var stringa "s" da fuori
//final shopListProvider = StateNotifierProvider.autoDispose.family<ShopListVM, ShopListState, String>((ref, s) {
//  return ShopListVM(ref, s);
//});

/// vm provider
final shopListProvider = StateNotifierProvider.autoDispose<ShopListVM, ShopListState>((ref) {
    return ShopListVM(ref);
});

    