import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/theme/app_colors.dart';

class ResultChip extends StatelessWidget {
  final bool success;
  final Widget label;
  final void Function() onPressed;

  const ResultChip({
    super.key,
    required this.success,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = success
        ? Theme.of(context).appColors.success
        : ColorScheme.of(context).error;
    final contentColor = success
        ? Theme.of(context).appColors.onSuccess
        : ColorScheme.of(context).onError;
    return ActionChip(
      avatar: Icon(success ? Icons.check : Icons.error, color: contentColor),
      labelStyle: TextTheme.of(
        context,
      ).labelLarge!.copyWith(color: contentColor),
      backgroundColor: bgColor,
      label: label,
      onPressed: onPressed,
    );
  }
}
