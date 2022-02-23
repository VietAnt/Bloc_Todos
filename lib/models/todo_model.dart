import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  //-Khai bao bien--//
  final String id;
  final String task;
  final String description;
  bool? isCompleted;
  bool? isCancelled;

  //*--Contructor--//
  Todo(
      {required this.id,
      required this.task,
      required this.description,
      this.isCancelled,
      this.isCompleted}) {
    isCancelled = isCancelled ?? false;
    isCompleted = isCompleted ?? false;
  }

  //*--Todo copyWith--//
  Todo copyWith(
      {String? id,
      String? task,
      String? description,
      bool? isCompleted,
      bool? isCancellted}) {
    return Todo(
      id: id ?? this.id,
      task: task ?? this.task,
      description: this.description,
      isCancelled: isCancelled ?? this.isCancelled,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  //*--Override--//
  @override
  List<Object?> get props => [id, task, description, isCompleted, isCompleted];

  //*---List---//
  static List<Todo> todos = [
    Todo(
      id: '1',
      task: 'Sample Todo 1',
      description: 'This ia a test To Do',
    ),
    Todo(
      id: '2',
      task: 'Todo 2',
      description: 'This i a test To Do',
    )
  ];
}
