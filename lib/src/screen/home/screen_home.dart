import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:jyanken_app_drills/src/routes/routes.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const .all(16),
        child: Center(
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
              FilledButton(
                onPressed: () {
                  QuestionListScreenRoute().go(context);
                },
                child: Text("問題を解く"),
              ),
              FilledButton(
                onPressed: () {
                  FreePlayScreenRoute().go(context);
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
