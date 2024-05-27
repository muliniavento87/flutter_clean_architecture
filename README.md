
## 0. Implementazione pratica
- Le funzionalità che richiedono refresh GUI (con cambio stato) non verranno create
come providers se usate da una sola vista, ma saranno integrate sullo stato della
vista interessata
- I providers verranno usati per fornire servizi che interessano l'app nella sua totalità
e che quindi
```
  - data_module (utility layer)
    - env (configs legate ai flavors)
    - theme (design tema app)
    - utilities (pool utilità della app)
  - data_module (data layer)
    - models (models datasources)
    - repositories (es. logica recupero dato da remoto o locale, se attiva o meno la connessione)
    - datasources (logica di recupero dati a basso livello)
  - domain_module (business layer)
    - entities (models api)
    - repositories (ponte di comunicazione tra i layers "data" e "business")
    - usecases (le azioni che vogliamo compiere)
  - lib/ (presentation layer)
    - pages
    - providers
    - widgets
```
## 1. Dipendenze
### - root progetto
```
    # RIVERPOD
flutter pub add flutter_riverpod riverpod_annotation
    # UTILITIES
flutter pub add freezed json_serializable build_runner go_router
    # RETROFIT
#flutter pub add retrofit_generator
```
- pubspec.yaml (import moduli)
```
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
```
### - data_module
```
    # creazione modulo
flutter create --template=module data_module && cd data_module && rm -r test .idea lib/main.dart *.iml
    # FREEZED
flutter pub add json_annotation freezed_annotation
    # API REST
flutter pub add dio awesome_dio_interceptor
    # REALM
flutter pub add realm
    
    # PREFERENCES
#flutter pub add shared_preferences

```
- pubspec.yaml (import moduli)
```
dependencies:
  flutter:
    sdk: flutter
  ...
  domain_module:
    path: ./domain_module
  common_module:
    path: ./common_module
```
### - domain_module
```
    # creazione modulo
flutter create --template=module domain_module && cd domain_module && rm -r test .idea lib/main.dart *.iml
```
### - common_module
```
    # creazione modulo
flutter create --template=module common_module && cd common_module && rm -r test .idea lib/main.dart *.iml

    # FREEZED
flutter pub add json_annotation freezed_annotation
    # RIVERPOD
flutter pub add flutter_riverpod riverpod_annotation

    # pulzia
rm -r .android .ios test .dart_tool .idea *.iml
```
## 2. Registra il progetto su Firebase
```
https://console.firebase.google.com/

es. package:    com.example.primo_progetto
```
## 3. Flavors
```
    # FLAVORS
flutter pub add flutter_flavorizr
```
Per creare i flavors:
- Crea il file flavorizr.yaml nella root di progetto con le info dei flavors:
```
flavors:
  dev:
    app:
      name: "AppName Dev"

    android:
      applicationId: "com.example.primoprogetto.dev"
      firebase:
        config: ".firebase/dev/google-services.json"

    ios:
      bundleId: "com.example.primoprogetto.dev"
      firebase:
        config: ".firebase/dev/GoogleService-Info.plist"

  mock:
    app:
      name: "AppName Mock"

    android:
      applicationId: "com.example.primoprogetto.mock"
      firebase:
        config: ".firebase/mock/google-services.json"

    ios:
      bundleId: "com.example.primoprogetto.mock"
      firebase:
        config: ".firebase/mock/GoogleService-Info.plist"

  prod:
    app:
      name: "AppName"

    android:
      applicationId: "com.example.primoprogetto"
      firebase:
        config: ".firebase/prod/google-services.json"

    ios:
      bundleId: "com.example.primoprogetto"
      firebase:
        config: ".firebase/prod/GoogleService-Info.plist"
```
- Creiamo una cartella ".firebase" nella root di progetto con le cartelle sotto
  (con i relativi "google-services.json" e "GoogleService-Info.plist"):
    - dev
    - mock
    - prod
- Avvia lo script flavorizr_install, così verranno creati i flavors nei progetti nativi
```
flutter pub run flutter_flavorizr -p assets:download,assets:extract,android:androidManifest,android:buildGradle,android:dummyAssets,android:icons,ios:xcconfig,ios:buildTargets,ios:schema,ios:dummyAssets,ios:icons,ios:plist,ios:launchScreen,macos:xcconfig,macos:configs,macos:buildTargets,macos:schema,macos:dummyAssets,macos:icons,macos:plist,google:firebase,huawei:agconnect,assets:clean,ide:config
```
- esempio di avvio (flavor DEV)
```
flutter run --flavor=dev -t lib/main_dev.dart
```
## 4. build.yaml
```
targets:
  $default:
    builders:
      json_serializable|freezed|retrofit_generator:
        generate_for:
          - "{{}}.dart"
    sources:
      - "lib/**"
      - "test/**"
      - "data_module/**"
      - "domain_module/**"
```