import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_app_state.freezed.dart';

@freezed
class MyAppState with _$MyAppState {
const factory MyAppState({
    ThemeData? theme,
}) = MyAppData;
}

    