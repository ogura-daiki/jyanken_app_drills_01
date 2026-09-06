import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jyanken_app_drills/src/model/question/questions.dart';

class ScreenQuestions extends StatelessWidget {
  const ScreenQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("問題を解く"),
      ),
      body: ListView.builder(
        itemCount: Questions.values.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const .all(16),
              child: Text("Flutterの基礎的な部分から、じゃんけんアプリを作成するまでの問題です。"),
            );
          }
          final question = Questions.values[index - 1];

          return ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("$index. ${question.name}"),
            onTap: () {
              // TODO: 問題画面を開く
            },
          );
        },
      ),
    );
  }
}
