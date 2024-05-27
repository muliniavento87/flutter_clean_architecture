import 'package:common_module/utilities/check_connectivity.dart';
import 'package:data_module/repositories/magazzino_repository.dart';
import 'package:domain_module/models/Book.dart';


///
class GetCatalogoMagazzinoUsecase {
  /// Recupera la lista di Book
  Future<List<Book>> call([Future<bool> Function() testOnline = isOnline]) {
    return genericCall(
        testOnline: testOnline,
        onlineFn: () {
          return MagazzinoRepository()
                  .getCatalogoDataRemote()
                  .then((value) => value.map((r) => Book.fromRestData(r)));
        },
        offlineFn: () {
          return MagazzinoRepository()
              .getCatalogoDataLocal()
              .then((value) => value.map((r) => Book.fromRealmData(r)));
        }
    ).then(
      (value) => value?.toList() ?? []
    );
  }
}

Future<T?> genericCall<T>({
  Future<bool> Function() testOnline = isOnline,
  required Future<T> Function() onlineFn,
  required Future<T> Function() offlineFn,
}) {
  return testOnline()
            .then(
              (value) => value ? onlineFn() : offlineFn()
            )
            .catchError((err) {
              print(err);
            });
}