import 'package:domain_module/usecases/change_theme_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'my_app_state.dart';


class MyAppVM extends StateNotifier<MyAppState> {
    final Ref ref;

    MyAppVM(this.ref) : super(const MyAppData());

    ///
    switchTheme() {
        state = state.copyWith(
            theme: ChangeThemeUsecase().call(),
        );
    }
}

/// vm provider
final myAppProvider = StateNotifierProvider.autoDispose<MyAppVM, MyAppState>((ref) {
    return MyAppVM(ref);
});

    