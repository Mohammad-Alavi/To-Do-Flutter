import 'package:meta/meta.dart';

@immutable
abstract class TaskState {}

class InitialTaskState extends TaskState {}
