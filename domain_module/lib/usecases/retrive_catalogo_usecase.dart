import 'package:domain_module/models/book.dart';
import 'package:domain_module/repo/shop_repository.dart';

class RetrieveCatalogoUseCase {
  ShopRepository shopRepository;

  RetrieveCatalogoUseCase(this.shopRepository);

  Future<List<Book>> call() async {
    return shopRepository.getCatalogo();
  }
}
