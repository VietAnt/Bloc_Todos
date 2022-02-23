import 'package:flutter/material.dart';
import 'package:pub_bloc/models/todo_model.dart';
import 'package:pub_bloc/screens/add_todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Pattern: To Dos'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddTodoScreen(),
                ),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'Pending To Dos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
                itemCount: Todo.todos.length,
                itemBuilder: (BuildContext context, int index) {
                  return _todoCard(Todo.todos[index]);
                })
          ],
        ),
      ),
    );
  }
}

//!--_todocard--//
Card _todoCard(Todo todo) {
  return Card(
    margin: const EdgeInsets.only(bottom: 8.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            '#${todo.id} : ${todo.task}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_task),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.cancel),
              )
            ],
          )
        ],
      ),
    ),
  );
}
