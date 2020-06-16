import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_state.freezed.dart';

@freezed
@immutable
abstract class RootState implements _$RootState {
  const RootState._();

  const factory RootState({
    @Default(0) int currentIndex,
    @Default(true) bool bottomNavVisibility,
    ScrollController scrollController,
    @Default(false) bool hasInternetConnection,
    @Default(false) bool fcmIsConfigured,
    Map<String, dynamic> notification,
  }) = _RootState;

  factory RootState.initial() => RootState(scrollController: ScrollController());
}
