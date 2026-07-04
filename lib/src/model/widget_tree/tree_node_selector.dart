import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
part 'tree_node_selector.freezed.dart';
part 'tree_node_selector.g.dart';

@freezed
abstract class TreeNodeSelector with _$TreeNodeSelector {
  const TreeNodeSelector._();
  const factory TreeNodeSelector({
    required WidgetArg arg,
    required int entityId,
  }) = _TreeNodeSelector;

  factory TreeNodeSelector.fromJson(Map<String, dynamic> json) =>
      _$TreeNodeSelectorFromJson(json);
}
