import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MouseHoverListener extends HookWidget {
  final Widget Function(bool hover) builder;

  const MouseHoverListener({super.key, required this.builder});
  @override
  Widget build(BuildContext context) {
    final onHover = useState(false);
    return MouseRegion(
      onEnter: (event) {
        onHover.value = true;
      },
      onExit: (event) {
        onHover.value = false;
      },
      child: builder(onHover.value),
      hitTestBehavior: .deferToChild,
    );
  }
}
