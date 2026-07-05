import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/arg_input/arg_input.dart';
import 'package:jyanken_app_drills/src/component/widget_entity_editor/node_selector_display.dart';
import 'package:jyanken_app_drills/src/model/widget_tree/tree_node_selector.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_entity.dart';

class WidgetEntityEditor extends HookWidget {
  final List<TreeNodeSelector> selector;
  final WidgetEntity initialValue;
  final void Function(WidgetEntity newEntity) onChange;

  const WidgetEntityEditor({
    super.key,
    required this.selector,
    required this.initialValue,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final entity = useState(initialValue);
    final wrapper = entity.value.toWrapper();
    final keys = wrapper.args.keys.toList();
    return ListView.builder(
      itemCount: keys.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const .symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                NodeSelectorDisplay(
                  padding: const .symmetric(horizontal: 16),
                  selector: selector,
                ),
                Padding(
                  padding: const .symmetric(horizontal: 16),
                  child: Text(
                    "#${entity.value.id.value} ${entity.value.type.name}",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
          );
        }
        final key = keys[index - 1];
        final arg = wrapper.args[key];
        return Card(
          child: Padding(
            padding: const .all(8.0),
            child: Column(
              spacing: 2,
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              mainAxisAlignment: .start,
              children: [
                Text(key.name, style: Theme.of(context).textTheme.labelLarge),
                Padding(
                  padding: const .only(left: 8, right: 8),
                  child: ArgInput(
                    arg: key,
                    value: arg,
                    onChange: (newValue) {
                      final newArgs = {...wrapper.args};
                      newArgs[key] = newValue;
                      final newEntity = WidgetEntity.fromWrapper(
                        wrapper.copyWith(args: newArgs),
                      );
                      onChange(newEntity);
                      entity.value = newEntity;
                    },
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
