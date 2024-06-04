

import 'package:data_module/data_module.dart';
import 'package:domain_module/repo/cart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RefExt on Ref{

  get readCartRepProv => this.read(cartRepositoryProvider);

  get readShopRepProv => this.read(shopApiRepositoryProvider);
}