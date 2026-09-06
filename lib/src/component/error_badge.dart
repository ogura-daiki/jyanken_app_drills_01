import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/theme/app_colors.dart';

class ErrorBadge extends StatelessWidget {
  final int errorCount;
  final Widget child;

  const ErrorBadge({super.key, required this.errorCount, required this.child});

  @override
  Widget build(BuildContext context) {
    return Badge(
      backgroundColor: switch (errorCount) {
        > 0 => ColorScheme.of(context).error,
        _ => Theme.of(context).appColors.success,
      },
      label: switch (errorCount) {
        int i when i > 0 => Text("$i"),
        _ => Icon(
          Icons.check,
          fontWeight: .w900,
          size: Theme.of(context).textTheme.labelSmall!.fontSize!,
          color: Theme.of(context).appColors.onSuccess,
        ),
      },
      child: child,
    );
  }
}
