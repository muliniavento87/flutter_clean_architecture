import 'package:domain_module/models/Book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'magazzino_state.freezed.dart';

@freezed
class MagazzinoState with _$MagazzinoState {
const factory MagazzinoState({
    @Default(false) bool isLoading,
    @Default([]) List<Book> books
}) = MagazzinoData;
}

    