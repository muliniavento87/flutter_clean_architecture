import 'package:domain_module/usecases/retrieve_current_cart_usecase.dart';
import 'package:flutter_clean_architecture/app/ext/ext.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'cart_badge_state.dart';


class CartBadgeVM extends StateNotifier<CartBadgeState> {
    final Ref ref;

    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //CartBadgeVM(this.ref, this.s) : super(CartBadgeData(str: s)) {
    //    initAsync();
    //}

    CartBadgeVM(this.ref) : super(const CartBadgeData()) {
        initAsync();
    }

    Future<void> initAsync() async {
        // Esegue il corpo quando cambia lo stato del provider (ref.readCartRepProv o ref.read(cartRepositoryProvider)).
        // Viene modificato da tutti i metodi del CartRepository
        var listener = ref.listen(RetrieveCurrentCartUseCase(ref.readCartRepProv).call(), (previous, next) {
            state = state.copyWith(counter: next.length);
        });
    }
}

// Se ricevessimo una var stringa "s" da fuori
//final cartBadgeProvider = StateNotifierProvider.autoDispose.family<CartBadgeVM, CartBadgeState, String>((ref, s) {
//  return CartBadgeVM(ref, s);
//});

/// vm provider
final cartBadgeProvider = StateNotifierProvider.autoDispose<CartBadgeVM, CartBadgeState>((ref) {
    return CartBadgeVM(ref);
});

    