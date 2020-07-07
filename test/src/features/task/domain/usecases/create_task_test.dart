import 'package:belbool_to_do/src/features/task/domain/entities/task.dart';
import 'package:belbool_to_do/src/features/task/domain/repositories/task_repository.dart';
import 'package:belbool_to_do/src/features/task/domain/usecases/create_task.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTaskRepository extends Mock implements TaskRepository {}

void main() {
  CreateTask usecase;
  MockTaskRepository mockTaskRepository;

  setUp(() {
    mockTaskRepository = MockTaskRepository();
    usecase = CreateTask(mockTaskRepository);
  });

  final tTitle = 'تست تایتل';
  final tDescription = 'انجام دادن همه کارها';
  final tTag = 'کار';
  final tDueDate = '2011-10-05T14:48:00.000Z';
  final tStatus = 'انجام شده';
  final tTask = Task(
      title: tTitle,
      tag: tTag,
      description: tDescription,
      dueDate: tDueDate,
      status: tStatus);

  test('should create a task and return it', () async {
    when(mockTaskRepository.createTask(
            title: anyNamed('title'),
            description: anyNamed('description'),
            status: anyNamed('status'),
            dueDate: anyNamed('dueDate'),
            tag: anyNamed('tag')))
        .thenAnswer((_) async => Right(tTask));

    final result = await usecase(
        title: tTitle,
        tag: tTag,
        description: tDescription,
        dueDate: tDueDate,
        status: tStatus);

    expect(result, Right(tTask));

    verify(mockTaskRepository.createTask(
        title: tTitle,
        tag: tTag,
        description: tDescription,
        dueDate: tDueDate,
        status: tStatus));

    verifyNoMoreInteractions(mockTaskRepository);
  });
}
