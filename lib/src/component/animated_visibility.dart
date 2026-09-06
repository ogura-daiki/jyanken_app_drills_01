import 'package:flutter/material.dart';

class AnimatedVisibility extends StatelessWidget {
  final bool visible;
  final Duration duration;
  final Widget child;

  const AnimatedVisibility({
    super.key,
    required this.visible,
    required this.duration,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !visible,
      child: AnimatedOpacity(
        opacity: visible ? 1 : 0,
        duration: duration,
        curve: Curves.fastOutSlowIn,
        child: child,
      ),
    );
  }
}
