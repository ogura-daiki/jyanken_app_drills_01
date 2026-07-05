import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/color/color_wrapper.dart';

class ThemeColorPicker extends StatelessWidget {
  final Function(ColorWrapper newColor) onSelect;

  const ThemeColorPicker({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: ThemeColor.values.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,
        mainAxisExtent: 80,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        final key = ThemeColor.values[index];
        final color = key.get(Theme.of(context).colorScheme);
        return Material(
          clipBehavior: .antiAliasWithSaveLayer,
          borderRadius: .circular(8),
          child: InkWell(
            onTap: () {
              onSelect(.fromColor(color));
            },
            child: Column(
              crossAxisAlignment: .stretch,
              mainAxisSize: .max,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: .circular(8)),
                    clipBehavior: .antiAliasWithSaveLayer,
                    child: Ink(color: color),
                  ),
                ),
                Padding(
                  padding: const .all(4),
                  child: Text(
                    key.name,
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

enum ThemeColor {
  primary,
  onPrimary,
  primaryContainer,
  onPrimaryContainer,
  secondary,
  onSecondary,
  secondaryContainer,
  onSecondaryContainer,
  tertiary,
  onTertiary,
  tertiaryContainer,
  onTertiaryContainer,
  error,
  onError,
  errorContainer,
  onErrorContainer,

  surface,
  onSurface,
  surfaceDim,
  surfaceBright,
  surfaceContainerLowest,
  surfaceContainerLow,
  surfaceContainer,
  surfaceContainerHigh,
  surfaceContainerHighest,
  onSurfaceVariant,
  outline,
  outlineVariant,
  shadow,
  scrim,
  inverseSurface,
  onInverseSurface,
  inversePrimary,
  surfaceTint,

  primaryFixed,
  primaryFixedDim,
  onPrimaryFixed,
  onPrimaryFixedVariant,
  secondaryFixed,
  secondaryFixedDim,
  onSecondaryFixed,
  onSecondaryFixedVariant,
  tertiaryFixed,
  tertiaryFixedDim,
  onTertiaryFixed,
  onTertiaryFixedVariant;

  Color get(ColorScheme scheme) => switch (this) {
    .primary => scheme.primary,
    .onPrimary => scheme.onPrimary,
    .primaryContainer => scheme.primaryContainer,
    .onPrimaryContainer => scheme.onPrimaryContainer,
    .secondary => scheme.secondary,
    .onSecondary => scheme.onSecondary,
    .secondaryContainer => scheme.secondaryContainer,
    .onSecondaryContainer => scheme.onSecondaryContainer,
    .tertiary => scheme.tertiary,
    .onTertiary => scheme.onTertiary,
    .tertiaryContainer => scheme.tertiaryContainer,
    .onTertiaryContainer => scheme.onTertiaryContainer,
    .error => scheme.error,
    .onError => scheme.onError,
    .errorContainer => scheme.errorContainer,
    .onErrorContainer => scheme.onErrorContainer,

    .surface => scheme.surface,
    .onSurface => scheme.onSurface,
    .surfaceDim => scheme.surfaceDim,
    .surfaceBright => scheme.surfaceBright,
    .surfaceContainerLowest => scheme.surfaceContainerLowest,
    .surfaceContainerLow => scheme.surfaceContainerLow,
    .surfaceContainer => scheme.surfaceContainer,
    .surfaceContainerHigh => scheme.surfaceContainerHigh,
    .surfaceContainerHighest => scheme.surfaceContainerHighest,
    .onSurfaceVariant => scheme.onSurfaceVariant,
    .outline => scheme.outline,
    .outlineVariant => scheme.outlineVariant,
    .shadow => scheme.shadow,
    .scrim => scheme.scrim,
    .inverseSurface => scheme.inverseSurface,
    .onInverseSurface => scheme.onInverseSurface,
    .inversePrimary => scheme.inversePrimary,
    .surfaceTint => scheme.surfaceTint,

    .primaryFixed => scheme.primaryFixed,
    .primaryFixedDim => scheme.primaryFixedDim,
    .onPrimaryFixed => scheme.onPrimaryFixed,
    .onPrimaryFixedVariant => scheme.onPrimaryFixedVariant,
    .secondaryFixed => scheme.secondaryFixed,
    .secondaryFixedDim => scheme.secondaryFixedDim,
    .onSecondaryFixed => scheme.onSecondaryFixed,
    .onSecondaryFixedVariant => scheme.onSecondaryFixedVariant,
    .tertiaryFixed => scheme.tertiaryFixed,
    .tertiaryFixedDim => scheme.tertiaryFixedDim,
    .onTertiaryFixed => scheme.onTertiaryFixed,
    .onTertiaryFixedVariant => scheme.onTertiaryFixedVariant,
  };
}
