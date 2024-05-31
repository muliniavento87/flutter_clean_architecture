# flutter_clean_architecture
Test di implementazione della Clean Architecture su Flutter

# Passaggi creazione struttura per nuovo progetto
1. Creazione moduli
```
flutter create --template=module data_module && cd data_module && rm -r test .idea lib/main.dart *.iml; cd ..
flutter create --template=module domain_module && cd domain_module && rm -r test .idea lib/main.dart *.iml; cd ..
flutter create --template=module common_module && cd common_module && rm -r test .idea lib/main.dart *.iml; cd ..
```
2. Add dipendenze base al progetto
```
# progetto [
    riverpod (providers),
    freezed e freezed_annotation (classi immutabili),
    go_router (routing pagine),
    flutter_flavorizr (gen. flavors),
    build_runner (gen. codice)
    ]
flutter pub add flutter_riverpod freezed freezed_annotation go_router flutter_flavorizr build_runner
```
3. Add dipendenze base ai moduli
```
# data_module [
    riverpod (providers),
    client rest (dio)
    ]
cd data_module && flutter pub add flutter_riverpod dio awesome_dio_interceptor; cd ..

# domain_module [riverpod (providers)]
cd domain_module && flutter pub add flutter_riverpod; cd ..
```
4. Import moduli
```
# progetto (pubspec.yaml)
dependencies:
  flutter:
    sdk: flutter
  ...
  domain_module:
    path: ./domain_module
  data_module:
      path: ./data_module
  common_module:
      path: ./common_module

# data_module (pubspec.yaml)
dependencies:
  flutter:
    sdk: flutter
  ...
  domain_module:
    path: ../domain_module
  common_module:
    path: ../common_module
```
5. Creazione automatica flavors
- [README](README/flutter_flavorizr.md)
6.