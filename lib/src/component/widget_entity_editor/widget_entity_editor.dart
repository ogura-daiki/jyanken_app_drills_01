import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/component/arg_editor/arg_editor.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetEntityEditor extends StatelessWidget {
  final WidgetEntity entity;
  final void Function(WidgetEntity newEntity) onChange;

  const WidgetEntityEditor({
    super.key,
    required this.entity,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final wrapper = WidgetArgsWrapper.fromWidget(entity);
    final keys = wrapper.args.keys.toList();
    return ListView.builder(
      itemCount: keys.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const .symmetric(vertical: 8.0, horizontal: 16),
            child: Text(
              entity.type.name,
              style: Theme.of(context).textTheme.headlineLarge,
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
                      onChange(
                        WidgetEntity.fromArgsWrapper(
                          wrapper.copyWith(args: newArgs),
                        ),
                      );
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
