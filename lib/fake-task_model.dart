import 'package:belbool_to_do/src/core/task_state.dart';

class FakeTask {
  final String title;
  final List<String> description;
  final String tag;
  final String dueDate;
  final TaskState status;

  FakeTask({this.title, this.description, this.tag, this.dueDate, this.status});
}