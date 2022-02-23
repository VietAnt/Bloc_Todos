import 'package:flutter/material.dart';
import 'package:pub_bloc/models/todo_model.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //*--TextField--//
    TextEditingController controllerId = TextEditingController();
    TextEditingController controllerTask = TextEditingController();
    TextEditingController controllerDescription = TextEditingController();
    //*--Run---//
    return Scaffold(
      appBar: AppBar(
        title: Text('Blocs : Add Todo'),
      ),
      body: Card(
          child: Column(
        children: [
          _inputField('ID', controllerId),
          _inputField('Task', controllerTask),
          _inputField('Description', controllerDescription),
          ElevatedButton(
            onPressed: () {
              var todo = Todo(
                id: controllerId.value.text,
                task: controllerTask.value.text,
                description: controllerDescription.value.text,
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
            child: const Text('Add To Do'),
          )
        ],
      )),
    );
  }
}

//*----Design _inputField----//
Column _inputField(
  String filed,
  TextEditingController controller,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '$filed',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        height: 50,
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        child: TextFormField(
          controller: controller,
        ),
      )
    ],
  );
}
