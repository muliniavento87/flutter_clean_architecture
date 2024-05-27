
import 'package:domain_module/models/Book.dart';
import 'package:domain_module/usecases/get_catalogo_magazzino_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'magazzino_state.dart';


class MagazzinoVM extends StateNotifier<MagazzinoState> {
    final Ref ref;

    MagazzinoVM(this.ref) : super(const MagazzinoData()) {
        // init
        getCatalogo();
    }

    ///
    getCatalogo() async {
        state = state.copyWith(isLoading: true);
        // elaborazioni varie
        state = state.copyWith(
            books: await GetCatalogoMagazzinoUsecase().call(),
            isLoading: false
        );
    }
}

/// vm provider
final magazzinoProvider = StateNotifierProvider.autoDispose<MagazzinoVM, MagazzinoState>((ref) {
    return MagazzinoVM(ref);
});

    