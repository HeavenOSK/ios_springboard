import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'spring_board_state.freezed.dart';

@freezed
class SpringBoardState with _$SpringBoardState {
  const factory SpringBoardState({
    @Default(false) bool movable,
  }) = _SpringBoardState;
}

final springBoardState = StateProvider<SpringBoardState>(
  (ref) => const SpringBoardState(),
);
