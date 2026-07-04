import 'package:get_it/get_it.dart';
import 'package:jyanken_app_drills/src/usecase/parse_tree_node_selector_usecase.dart';

void registerUsecase() {
  GetIt.I.registerSingleton<ParseTreeNodeSelectorUsecase>(
    ParseTreeNodeSelectorUsecaseImpl(),
  );
}
