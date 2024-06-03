# flutter_clean_architecture
Test di implementazione della Clean Architecture su Flutter

# Passaggi creazione struttura per nuovo progetto
1. Dipendenze base del progetto
```
# progetto [
    riverpod (providers),
    freezed (classi immutabili),
    go_router (routing pagine),
    flutter_flavorizr (gen. flavors),
    build_runner (gen. codice)
    ]
flutter pub add flutter_riverpod freezed freezed_annotation go_router flutter_flavorizr build_runner
```
2. Creazione moduli layers
- [README](README/2_creazione_moduli.md)
3. Creazione flavors
- [README](README/3_flutter_flavorizr.md)
4. Scripts (compilazione e builders)
- [README](README/4_scripts.md)
5. Scheletro common_module
- [README](README/5_scheletro_common_module.md)
6. Scheletro Domain Layer
- [README](README/6_scheletro_domain_layer.md)
7. Scheletro Data Layer
- [README](README/7_scheletro_data_layer.md)
8. Scheletro Presentation Layer
- [README](README/8_scheletro_presentation_layer.md)