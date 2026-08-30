import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';
import 'package:jyanken_app_drills/src/model/type/color/theme_color.dart'
    show ThemeColor;

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
