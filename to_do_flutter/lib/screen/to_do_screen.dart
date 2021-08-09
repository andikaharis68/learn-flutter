import 'package:flutter/material.dart';
import 'package:to_do_flutter/model/to_do.dart';
import 'package:to_do_flutter/repository/to_do_repository.dart';
import 'package:to_do_flutter/screen/to_do_detail.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  ToDoRepository _toDoRepository = new ToDoRepository();
  TextEditingController todoName = new TextEditingController();
  TextEditingController todoNumber = new TextEditingController();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("To do list, Flutter"),
      ),
      body: Container(
        child: Column(
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Enter Your Name'),
                          controller: todoName,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Name';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Enter Your Number'),
                          controller: todoNumber,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Number';
                            }
                            return null;
                          }),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _toDoRepository.addToDo(new ToDo(
                                  _toDoRepository.getAllToDo().length + 1,
                                  todoName.text,
                                  todoNumber.text));
                            });
                          }
                        },
                        child: Text('Submit'))
                  ],
                )),
            Expanded(
                child: Card(
              margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Scrollbar(
                  child: ListView.builder(
                      itemCount: _toDoRepository.getAllToDo().length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.account_box,
                                size: 40,
                              ),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Name : ${_toDoRepository.getAllToDo()[index].name},"),
                                      ]),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _toDoRepository.deleteToDO(
                                              _toDoRepository
                                                  .getAllToDo()[index]
                                                  .id);
                                        });
                                      },
                                      child:
                                          Icon(Icons.delete_forever, size: 25))
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ToDoDetailScreen(
                                        todo: _toDoRepository
                                            .getAllToDo()[index]),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      })),
            )),
          ],
        ),
      ),
    ));
  }
}
