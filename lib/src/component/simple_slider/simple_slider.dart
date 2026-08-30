import 'package:flutter/material.dart';

class SimpleSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final PreferredSizeWidget thumb;
  final double totalHeight;
  final double railHeight;
  final Widget railBackGround;
  final void Function(double newVal) onChange;

  const SimpleSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChange,
    required this.thumb,
    required this.railBackGround,
    this.totalHeight = 32,
    this.railHeight = 12,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: totalHeight,
      child: Center(
        child: SizedBox(
          height: railHeight,
          child: Stack(
            children: [
              railBackGround,
              LayoutBuilder(
                builder: (context, cs) {
                  return Listener(
                    behavior: .opaque,
                    onPointerMove: (ev) {
                      final per = (ev.localPosition.dx / cs.maxWidth).clamp(
                        0,
                        1,
                      );
                      onChange(per * (max - min) + min);
                    },
                    child: Align(
                      alignment: Alignment(
                        (value - min) / (max - min) * 2 - 1,
                        0,
                      ),
                      child: SizedBox.shrink(
                        child: Center(
                          child: OverflowBox(
                            minHeight: thumb.preferredSize.height,
                            maxHeight: thumb.preferredSize.height,
                            minWidth: thumb.preferredSize.width,
                            maxWidth: thumb.preferredSize.width,
                            child: thumb,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
