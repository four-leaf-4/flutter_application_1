import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_notifier.freezed.dart';

final countProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter({
    this.count = 0,
  }) : super(count);
  final int count;
  void increment() => state++;
}

final freeTextProvider =
    StateNotifierProvider.autoDispose<FreeText, TextEditingController>((ref) {
  return FreeText();
});

class FreeText extends StateNotifier<TextEditingController> {
  final TextEditingController freeTextController;

  FreeText()
      : freeTextController = TextEditingController(),
        super(TextEditingController());
}

@freezed
class DisplayTextState with _$DisplayTextState {
  const factory DisplayTextState({
    required String displayText,
  }) = _DisplayTextState;
}

// final inputTextProvider = StateNotifierProvider<DisplayTextViewModel, String>(
//   (ref) => DisplayTextViewModel("display here"),
// );

// class DisplayTextViewModel extends StateNotifier<String> {
//   DisplayTextViewModel(String state) : super(state);

//   void updateDisplayText(String displayText) {
//     state = displayText;
//   }
// }
