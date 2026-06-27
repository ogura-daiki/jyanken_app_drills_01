import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_args_wrapper.dart';
import 'package:jyanken_app_drills/src/model/widget_entity.dart';

class WidgetTreeEditor extends StatelessWidget {
  final int depth;
  final WidgetEntity entity;
  final void Function(WidgetEntity? newEntity) onChange;

  const WidgetTreeEditor({
    super.key,
    required this.entity,
    required this.onChange,
    this.depth = 0,
  });

  @override
  Widget build(BuildContext context) {
    final wrapper = WidgetArgsWrapper.fromWidget(entity);
    final subTree = wrapper.args.entries.where((e) => e.key.type.hasChild);

    return Column(
      crossAxisAlignment: .stretch,
      mainAxisSize: .min,
      mainAxisAlignment: .start,
      children: [
        InkWell(
          child: Padding(
            padding: .only(
              left: 8 + 8 * depth.toDouble(),
              right: 8,
              top: 8,
              bottom: 8,
            ),
            child: Row(
              mainAxisSize: .max,
              mainAxisAlignment: .start,
              crossAxisAlignment: .center,
              spacing: 4,
              children: [
                switch (entity.type) {
                  .text => Icon(Icons.label),
                  .column => Container(
                    transform: .rotationZ(pi / 2),
                    transformAlignment: .center,
                    child: Icon(Icons.view_column),
                  ),
                  .center => Icon(Icons.center_focus_strong),
                },
                Text(entity.type.name),
              ],
            ),
          ),
          onTap: () {},
        ),
        ...subTree.map((e) {
          return Column(
            crossAxisAlignment: .stretch,
            mainAxisSize: .min,
            mainAxisAlignment: .start,
            children: [
              ...switch (e.value) {
                WidgetEntity we => [
                  WidgetTreeEditor(
                    depth: depth + 1,
                    entity: we,
                    onChange: (newEntity) {
                      final newArgs = {...wrapper.args};
                      newArgs[e.key] = newEntity;
                      onChange(
                        WidgetEntity.fromArgsWrapper(
                          wrapper.copyWith(args: newArgs),
                        ),
                      );
                    },
                  ),
                ],
                List<WidgetEntity> wel => [
                  ...wel.indexed.map((entry) {
                    final idx = entry.$1;
                    final we = entry.$2;
                    return WidgetTreeEditor(
                      depth: depth + 1,
                      entity: we,
                      onChange: (newEntity) {
                        final newArgs = {...wrapper.args};
                        List<WidgetEntity?> newList = [...newArgs[e.key]];
                        newList[idx] = newEntity;
                        newArgs[e.key] = newList
                            .whereType<WidgetEntity>()
                            .toList();
                        onChange(
                          WidgetEntity.fromArgsWrapper(
                            wrapper.copyWith(args: newArgs),
                          ),
                        );
                      },
                    );
                  }),

                  TextButton(
                    onPressed: () {
                      final newArgs = {...wrapper.args};
                      List<WidgetEntity?> newList = [...newArgs[e.key]];
                      newList.add(
                        .text(
                          args: .initial.copyWith(
                            text: "${Random().nextInt(99999)}",
                          ),
                        ),
                      );
                      newArgs[e.key] = newList
                          .whereType<WidgetEntity>()
                          .toList();
                      onChange(
                        WidgetEntity.fromArgsWrapper(
                          wrapper.copyWith(args: newArgs),
                        ),
                      );
                    },
                    child: Text("追加する"),
                  ),
                ],
                _ => [Text("空")],
              },
            ],
          );
        }),
      ],
    );
  }
}
