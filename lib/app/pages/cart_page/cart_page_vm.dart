import 'package:domain_module/models/book.dart';
import 'package:domain_module/usecases/retrieve_current_cart_usecase.dart';
import 'package:flutter_clean_architecture/app/ext/ext.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'cart_page_state.dart';


class CartPageVM extends StateNotifier<CartPageState> {
    final Ref ref;

    CartPageVM(this.ref) : super(const CartPageData()) {
        initAsync();
    }

    Future<void> initAsync() async {
        //state = state.copyWith(isLoading: true);
        // elaborazioni varie
        //state = state.copyWith(isLoading: false);
        List<Book> lista = ref.read(RetrieveCurrentCartUseCase(ref.readCartRepProv).call());
        state = state.copyWith(books: lista);

        var listener = ref.listen(RetrieveCurrentCartUseCase(ref.readCartRepProv).call(), (previous, next) {
            state = state.copyWith(books: next);
        });
    }
}

// Se ricevessimo una var stringa "s" da fuori
//final cartPageProvider = StateNotifierProvider.autoDispose.family<CartPageVM, CartPageState, String>((ref, s) {
//  return CartPageVM(ref, s);
//});

/// vm provider
final cartPageProvider = StateNotifierProvider.autoDispose<CartPageVM, CartPageState>((ref) {
    return CartPageVM(ref);
});

    