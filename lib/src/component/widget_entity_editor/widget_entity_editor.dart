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
      itemCount: keys.length,
      itemBuilder: (context, index) {
        final key = keys[index];
        final arg = wrapper.args[key];
        return ArgEditor(
          arg: key.type,
          value: arg,
          onChange: (newValue) {
            final newArgs = {...wrapper.args};
            newArgs[key] = newValue;
            onChange(
              WidgetEntity.fromArgsWrapper(wrapper.copyWith(args: newArgs)),
            );
          },
        );
      },
    );
  }
}
