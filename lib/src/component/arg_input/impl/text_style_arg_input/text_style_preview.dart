import 'package:flutter/widgets.dart';

class TextStylePreview extends StatelessWidget {
  final TextStyle? style;
  const TextStylePreview({super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("サンプル " * 100, style: style, maxLines: 1, softWrap: false),
        Text("Sample " * 100, style: style, maxLines: 1, softWrap: false),
      ],
    );
  }
}
