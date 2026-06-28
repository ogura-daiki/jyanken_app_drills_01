import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/depth_color_extension.dart';

class DepthColoredMaterial extends StatelessWidget {
  final int depth;
  final Widget child;

  const DepthColoredMaterial({
    super.key,
    required this.depth,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(color: context.depthColor(depth), child: child);
  }
}
