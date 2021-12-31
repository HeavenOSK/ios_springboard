import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/spring_board_storage.dart';

final springBoardRegisterer =
    StateNotifierProvider<SpringBoardRegisterer, SpringBoardStorage>(
  (ref) => SpringBoardRegisterer(),
);

class SpringBoardRegisterer extends StateNotifier<SpringBoardStorage> {
  SpringBoardRegisterer()
      : super(
          SpringBoardStorageX.getInitialStorage(
            itemCount: 24,
          ),
        );

  void shuffle() {
    final copied = <int>[...state.order]..shuffle();
    state = state.copyWith(
      order: copied,
    );
  }

  void reset() {
    state = state.copyWith(
      order: List.generate(state.mockDataList.length, (index) => index),
    );
  }

  void moveItem({
    required int id,
    required int targetIndex,
  }) {
    final originalIndex = state.order.indexOf(id);
    if (originalIndex == targetIndex) {
      return;
    }
    final cloned = [
      ...state.order,
    ]
      ..remove(id)
      ..insert(targetIndex, id);
    state = state.copyWith(
      order: cloned,
    );
  }
}
