import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ios_springboard/features/spring_board/state/icons/mock_icon_data.dart';
import 'package:ios_springboard/features/spring_board/state/icons/mock_icon_data_list.dart';

part 'spring_board_state.freezed.dart';

@freezed
class SpringBoardState with _$SpringBoardState {
  const factory SpringBoardState({
    @Default(false) bool dragging,
    required List<MockIconData> mockDataList,
    required List<int> order,
  }) = _SpringBoardState;
}

extension SpringBoardStateX on SpringBoardState {
  static SpringBoardState getInitialState({
    required int itemCount,
  }) {
    final mockDataList = List.generate(
      itemCount,
      generateMockIconData,
    );
    final order = List.generate(itemCount, (index) => index);
    return SpringBoardState(
      mockDataList: mockDataList,
      order: order,
    );
  }
}
