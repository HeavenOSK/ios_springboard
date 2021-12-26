import 'package:freezed_annotation/freezed_annotation.dart';

part 'reodered_history.freezed.dart';

@freezed
class ReorderedHistory with _$ReorderedHistory {
  const factory ReorderedHistory({
    required int id,
    required int dragTargetIndex,
  }) = _ReorderedHistory;
}
