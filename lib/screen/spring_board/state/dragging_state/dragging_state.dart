import 'package:freezed_annotation/freezed_annotation.dart';

part 'dragging_state.freezed.dart';

@freezed
class DraggingState with _$DraggingState {
  const factory DraggingState({
    required int id,
  }) = _DraggingState;
}
