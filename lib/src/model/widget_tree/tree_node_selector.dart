import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
part 'tree_node_selector.freezed.dart';
part 'tree_node_selector.g.dart';

@freezed
abstract class TreeNodeSelector with _$TreeNodeSelector {
  const TreeNodeSelector._();
  const factory TreeNodeSelector({
    @Assert('arg.canHaveWidget')
    required WidgetArg arg,
    required int entityId,
  }) = _TreeNodeSelector;

  factory TreeNodeSelector.fromJson(Map<String, dynamic> json) =>
      _$TreeNodeSelectorFromJson(json);
}

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:jyanken_app_drills/src/model/widget_args_definition/widget_arg.dart';
// part 'tree_node_selector.freezed.dart';

// @Freezed(genericArgumentFactories: true)
// abstract class TreeNodeSelector<T> with _$TreeNodeSelector<T> {
//   const TreeNodeSelector._();
//   const factory TreeNodeSelector({
//     required WidgetArg<T> arg,
//     required int entityId,
//   }) = _TreeNodeSelector;
// }

// part 'tree_node_selector.freezed.dart';
// part 'tree_node_selector.g.dart';

// @freezed
// abstract class TreeNodeSelector with _$TreeNodeSelector {
//   const TreeNodeSelector._();
//   const factory TreeNodeSelector({
//     required WidgetArg arg,
//     required int entityId,
//   }) = _TreeNodeSelector;

//   factory TreeNodeSelector.fromJson(Map<String, dynamic> json) =>
//       _$TreeNodeSelectorFromJson(json);
// }
