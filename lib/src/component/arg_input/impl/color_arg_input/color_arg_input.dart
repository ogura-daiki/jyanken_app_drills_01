import 'package:flutter/widget_previews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input_value_widget_interface.dart';
import 'package:jyanken_app_drills/src/component/color_picker/color_picker.dart';
import 'package:jyanken_app_drills/src/component/color_picker/transparent_repeat_bg.dart';
import 'package:jyanken_app_drills/src/component/popup_card/popup_card.dart';
import 'package:jyanken_app_drills/src/model/type/color/color_wrapper.dart';

class ColorEditor extends StatefulHookConsumerWidget
    implements ArgInputValueWidgetInterface<ColorWrapper> {
  @override
  final bool nullable;
  @override
  final ColorWrapper? defaultValue;
  @override
  final ColorWrapper? value;
  @override
  final void Function(ColorWrapper? newVal) onChange;

  const ColorEditor({
    super.key,
    required this.nullable,
    required this.value,
    required this.onChange,
    required this.defaultValue,
  });

  @override
  createState() => _ColorEditorState();
}

class _ColorEditorState extends ConsumerState<ColorEditor> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final menuController = useMemoized(() => MenuController());
    return PopupCard(
      controller: menuController,
      defaultPopupHeight: 400.0,
      popup: ColorPicker(
        initialColor: widget.value ?? widget.defaultValue,
        onChange: (newColor) {
          menuController.close();
          widget.onChange(newColor);
        },
      ),
      child: SizedBox(
        height: 40,
        child: Stack(
          fit: .expand,
          children: [
            Container(
              decoration: BoxDecoration(
                border: .all(
                  width: 1,
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
                borderRadius: .all(.circular(8)),
              ),
              clipBehavior: .antiAliasWithSaveLayer,
              child: TransparentRepeatBg(tileSize: 8),
            ),
            Material(
              color: Colors.transparent,
              clipBehavior: .antiAliasWithSaveLayer,
              borderRadius: .all(.circular(8)),
              child: Ink(
                decoration: BoxDecoration(
                  border: .all(
                    width: 1,
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                  color: widget.value?.color ?? Colors.grey,
                ),
                child: InkWell(
                  onTapUp: (details) {
                    menuController.open();
                  },
                  child: switch (widget.value) {
                    Null() => Center(
                      child: Text("null", style: .new(color: Colors.black)),
                    ),
                    ColorWrapper() => null,
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@Preview(name: 'My Sample Text')
Widget previewColorEditor() {
  return Dialog.fullscreen(
    child: HookBuilder(
      builder: (context) {
        final color = useState<ColorWrapper?>(.fromColor(Colors.amber));
        return ColorEditor(
          nullable: true,
          defaultValue: null,
          value: color.value,
          onChange: (newColor) {
            color.value = newColor;
          },
        );
      },
    ),
  );
}
