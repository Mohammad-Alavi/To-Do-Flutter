import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String title;
  final String description;
  final String tag;
  final String status;
  final String dueDate;

  Task({this.tag, this.title, this.description, this.status, this.dueDate});
}
