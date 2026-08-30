import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class TransparentRepeatBg extends StatelessWidget {
  final double tileSize;

  const TransparentRepeatBg({super.key, required this.tileSize});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const zoomFactor = 4.0;
        const colors = [Colors.black, Colors.black, Colors.white, Colors.white];
        const stops = [0.0, 0.5, 0.5, 1.0];
        final widthRatio = tileSize / constraints.maxWidth * zoomFactor;
        final heightRatio = tileSize / constraints.maxHeight * zoomFactor;
        return ColoredBox(
          color: Colors.white,
          child: Opacity(
            opacity: 0.1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: colors,
                  begin: const Alignment(-1.0, -1.0),
                  end: Alignment(-1.0 + widthRatio, -1.0),
                  stops: stops,
                  tileMode: .repeated,
                ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: colors,
                    begin: const Alignment(-1.0, -1.0),
                    end: Alignment(-1.0, -1.0 + heightRatio),
                    stops: stops,
                    tileMode: .repeated,
                  ),
                  backgroundBlendMode: .difference,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

@Preview()
Widget transparentRepeatBgPreview() {
  return MaterialApp(
    home: SizedBox(
      width: 32,
      height: 16,
      child: TransparentRepeatBg(tileSize: 8),
    ),
  );
}
