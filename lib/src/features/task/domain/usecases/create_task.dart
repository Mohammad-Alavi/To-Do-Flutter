import 'package:belbool_to_do/src/core/error/failure.dart';
import 'package:belbool_to_do/src/features/task/domain/entities/task.dart';
import 'package:belbool_to_do/src/features/task/domain/repositories/task_repository.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter/foundation.dart';

class CreateTask {
  final TaskRepository repository;

  CreateTask(this.repository);

  Future<Either<Failure, Task>> call(
      {@required String tag,
      @required String title,
      @required String description,
      @required String status,
      @required String dueDate}) async {
    return await repository.createTask(
        title: title,
        tag: tag,
        description: description,
        dueDate: dueDate,
        status: status);
  }
}
