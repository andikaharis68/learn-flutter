import 'package:to_do_flutter/model/to_do.dart';

class ToDoRepository {
  List<ToDo> todos = <ToDo>[];

  List<ToDo> getListToDo() {
    return todos;
  }

  addToDo(ToDo toDo) {
    todos.add(toDo);
  }

  deleteToDO(int id) {
    todos.removeWhere((element) => element.id == id);
  }
}
