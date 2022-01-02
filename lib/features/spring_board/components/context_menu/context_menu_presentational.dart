part of 'context_menu.dart';

class _ContextMenuPresentational extends ConsumerWidget {
  const _ContextMenuPresentational({
    required this.visible,
    required this.itemCount,
    Key? key,
  }) : super(key: key);

  final int itemCount;
  final bool visible;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contextMenuScales = ref.watch(contextMenuScalesProvider);
    final width = ref.watch(
      slotLayerComputedValuesProvider.select(
        (value) => value.slotSize.width * 3,
      ),
    );
    return TweenAnimationBuilder<double>(
      // t と同じもの
      tween: Tween(begin: 0, end: visible ? 1 : 0),
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeInCubic,
      builder: (context, value, child) {
        // TODO(HeavenOSK): アニメーションを調整する
        // ref: https://api.flutter.dev/flutter/animation/Curves-class.html
        // ref: https://github.com/HeavenOSK/flutter_swipable_stack/blob/f92bb649b6e9ff789c3f93a5519f58521897db7e/lib/src/swipable_stack.dart#L104
        return Transform.scale(
          scale: value,
          alignment: (Alignment.topCenter + Alignment.topLeft) / 2,
          child: Opacity(
            opacity: value,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                contextMenuScales.itemHeight / 4,
              ),
              child: SizedBox(
                width: width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < itemCount; i++) ...[
                      const _ContextMenuItem(),
                      if (i < itemCount - 1)
                        const Divider(
                          height: 0,
                          color: Color(0xFFb1b3b8),
                        ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ContextMenuItem extends ConsumerWidget {
  const _ContextMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contextMenuScales = ref.watch(
      contextMenuScalesProvider,
    );
    return Container(
      color: const Color(0xFFe4e7ed),
      height: contextMenuScales.itemHeight,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: contextMenuScales.itemHorizontalPadding,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}
