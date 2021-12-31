import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/mock_icon_data/mock_icon_data.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/mock_icon_data/mock_icon_data_list.dart';

part 'spring_board_storage.freezed.dart';

@freezed
class SpringBoardStorage with _$SpringBoardStorage {
  const factory SpringBoardStorage({
    required List<MockIconData> mockDataList,
    required List<int> order,
  }) = _SpringBoardStorage;
}

extension SpringBoardStorageX on SpringBoardStorage {
  static SpringBoardStorage getInitialStorage({
    required int itemCount,
  }) {
    final mockDataList = List.generate(
      itemCount,
      generateMockIconData,
    );
    final order = List.generate(itemCount, (index) => index);
    return SpringBoardStorage(
      mockDataList: mockDataList,
      order: order,
    );
  }
}
