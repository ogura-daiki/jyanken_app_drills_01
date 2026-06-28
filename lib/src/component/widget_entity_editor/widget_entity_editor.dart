import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/arg_editor.dart';
import 'package:jyanken_app_drills/src/component/widget_tree_editor/tree_node_selector.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

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
                SizedBox(
                  height: 20,
                  child: ListView.separated(
                    padding: const .symmetric(horizontal: 16),
                    scrollDirection: .horizontal,
                    itemCount: selector.length,
                    itemBuilder: (context, index) {
                      final s = selector[index];
                      return SizedBox(
                        height: 20,
                        child: Center(
                          child: Text("${s.entityId}.${s.arg.name}"),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                      child: Center(child: Icon(Icons.arrow_right, size: 20)),
                    ),
                  ),
                ),
                Padding(
                  padding: const .symmetric(horizontal: 16),
                  child: Text(
                    entity.value.type.name,
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
                Text(key.name),
                Padding(
                  padding: const .only(left: 8),
                  child: ArgEditor(
                    arg: key.type,
                    value: arg,
                    onChange: (newValue) {
                      final newArgs = {...wrapper.args};
                      newArgs[key] = newValue;
                      final newEntity = WidgetEntity.fromArgsWrapper(
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
