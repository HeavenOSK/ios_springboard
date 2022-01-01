part of 'context_menu.dart';

class _ContextMenuPresentational extends ConsumerWidget {
  const _ContextMenuPresentational({
    required this.itemCount,
    Key? key,
  }) : super(key: key);

  final int itemCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contextMenuScales = ref.watch(contextMenuScalesProvider);
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        contextMenuScales.itemHeight / 4,
      ),
      child: SizedBox(
        width: contextMenuScales.width,
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
