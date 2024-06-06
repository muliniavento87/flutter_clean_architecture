
import 'package:data_module/data_module.dart';
import 'package:domain_module/models/book.dart';
import 'package:domain_module/repo/cart_repository.dart';
import 'package:domain_module/usecases/add_to_cart_usecase.dart';
import 'package:domain_module/usecases/remove_from_cart_usecase.dart';
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
        //getCatalogoShopRemovingCart();
        //registerToCart();
        //getCatalogoShop();
    }

    ///
    void switchTheme() {
        SwitchThemeUseCase(ref.read(appConfigRepositoryProvider)).call(ref);
    }

    /*
    ///
    void getCatalogoShop() {
        state = state.copyWith(isLoading: true);
        // elaborazioni varie
        RetrieveCatalogoUseCase(ref.readShopRepProv).call()
        .then((value) =>  state = state.copyWith(
            catalogoShop: value,
            isLoading: false
        )).onError((error, stackTrace) => state = state.copyWith(isLoading: false,)); //TODO manage error
    }
    */

    ///
    void getCatalogoShopRemovingCart() {
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

    void registerToCart(){
        // Esegue il corpo quando cambia lo stato del provider (ref.readCartRepProv o ref.read(cartRepositoryProvider)).
        // Viene modificato da tutti i metodi del CartRepository
        var listener = ref.listen(RetrieveCurrentCartUseCase(ref.readCartRepProv).call(), (previous, next) {
            //getCatalogoShop();
            getCatalogoShopRemovingCart();
        });
        //listner.close()
    }

    void removeBookFromCart() {
        List<Book> lista = ref.read(RetrieveCurrentCartUseCase(ref.readCartRepProv).call());
        if(lista.length <= 0) {
            return;
        }
        RemoveFromCartUsecase(ref.read(cartRepositoryProvider)).call(lista.first);
    }

    void addBookFromCart() {
        List<Book> lista = ref.read(RetrieveCurrentCartUseCase(ref.readCartRepProv).call());
        AddToCartUsecase(ref.read(cartRepositoryProvider)).call(
            Book(name: "name${lista.length}", status: 0, price: 1.2)
        );
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




    