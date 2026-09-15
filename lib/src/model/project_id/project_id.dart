import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jyanken_app_drills/src/core/null_ext.dart';
import 'package:jyanken_app_drills/src/model/question/question.dart';
import 'package:jyanken_app_drills/src/model/question/questions.dart';
import 'package:jyanken_app_drills/src/model/widget/widget_entity/widget_entity.dart';
part 'project_id.freezed.dart';
part 'project_id.g.dart';

@freezed
sealed class ProjectId with _$ProjectId {
  const ProjectId._();
  const factory ProjectId.userProject(String id) = ProjectIdTypeUserProject;
  const factory ProjectId.question(String questionId) = ProjectIdTypeQuestion;

  String get projectTitle => switch (this) {
    ProjectIdTypeUserProject(:final id) => id,
    ProjectIdTypeQuestion id => Questions.findById(
      id,
    ).requireType<Question>().name,
  };

  WidgetEntityRoot get projectRoot {
    return switch (this) {
      ProjectIdTypeUserProject() => .new(id: .create(), args: .initial),
      ProjectIdTypeQuestion id => Questions.findById(
        id,
      ).getOrThrow(null).initialRoot,
    };
  }

  factory ProjectId.fromJson(Map<String, dynamic> json) =>
      _$ProjectIdFromJson(json);
}
