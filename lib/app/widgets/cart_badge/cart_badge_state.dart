
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_badge_state.freezed.dart';

@freezed
class CartBadgeState with _$CartBadgeState {
const factory CartBadgeState({
    // Se ricevessimo nella View una var stringa da fuori (che vogliamo salvare nello state)
    //String? str,
    @Default(false) bool isLoading,
    @Default(0) int counter,
}) = CartBadgeData;
}

    