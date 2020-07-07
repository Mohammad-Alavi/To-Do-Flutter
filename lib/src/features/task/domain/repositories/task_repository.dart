import 'package:belbool_to_do/src/core/error/failure.dart';
import 'package:belbool_to_do/src/features/task/domain/entities/task.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter/cupertino.dart';

abstract class TaskRepository {
  Future<Either<Failure, Task>> createTask(
      {@required String tag,
      @required String title,
      @required String description,
      @required String status,
      @required String dueDate});

  Future<Either<Failure, Task>> update(Map<String, String> task);

  Future<Either<Failure, Task>> get(int taskId);

  Future<Either<Failure, List<Task>>> getAll();

  Future<Either<Failure, bool>> deleteTask(int taskId);
}
