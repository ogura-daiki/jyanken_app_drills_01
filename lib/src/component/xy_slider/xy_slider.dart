import 'package:flutter/widgets.dart';

class XySlider extends StatelessWidget {
  final Offset position;
  final PreferredSizeWidget thumb;
  final void Function(Offset newPos) onChange;

  const XySlider({
    super.key,
    required this.position,
    required this.onChange,
    required this.thumb,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: LayoutBuilder(
        builder: (context, cs) {
          return Listener(
            behavior: .opaque,
            onPointerMove: (ev) {
              final x = ev.localPosition.dx / cs.maxWidth;
              final y = ev.localPosition.dy / cs.maxHeight;
              onChange(.new(x, y));
            },
            child: Align(
              alignment: Alignment(position.dx * 2 - 1, position.dy * 2 - 1),
              child: SizedBox.shrink(
                child: Center(
                  child: OverflowBox(
                    minWidth: thumb.preferredSize.width,
                    maxWidth: thumb.preferredSize.width,
                    minHeight: thumb.preferredSize.height,
                    maxHeight: thumb.preferredSize.height,
                    child: thumb,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
