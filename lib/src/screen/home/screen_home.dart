import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:jyanken_app_drills/src/component/flutter_editor/flutter_editor.dart';
import 'package:jyanken_app_drills/src/model/widget_definition/widget_type.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Column(
            crossAxisAlignment: .center,
            mainAxisSize: .max,
            mainAxisAlignment: .center,
            spacing: 8,
            children: [
              Text(
                "じゃんけんアプリ穴埋め問題集",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              FilledButton(onPressed: () {}, child: Text("問題を解く")),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => FlutterEditor(
                        projectId: "FREE_PLAY",
                        allowTypes: WidgetType.findByCategories({
                          .common,
                        }).toSet(),
                      ),
                    ),
                  );
                },
                child: Text("フリープレイ"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@Preview()
Widget previewScreenHome() {
  return ScreenHome();
}
