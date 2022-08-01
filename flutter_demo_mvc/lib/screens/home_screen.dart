import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_demo_mvc/controller/todo_controller.dart';
import 'package:flutter_demo_mvc/models/todo.dart';
import 'package:flutter_demo_mvc/repository/todo_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todoController = TodoController(TodoRepository()); // 의존 주입

    return Scaffold(
      appBar: AppBar(
        title: Text('REST API EX'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: todoController.fetchTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('ERROR'),
            );
          }
          return buildBodyContent(snapshot,
              todoController); // FutureBuilder<List<Todo>> 명시를 해줘야 snapshot 빨간줄 사라짐
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // post 호출
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

SafeArea buildBodyContent(
    AsyncSnapshot<List<Todo>> snapshot, TodoController todoController) {
  return SafeArea(
    child: ListView.separated(
        itemBuilder: (context, index) {
          var todo = snapshot.data?[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 100.0,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('${todo?.id}'),
                ),
                Expanded(
                  flex: 3,
                  child: Text('${todo?.title}'),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          print('put');
                          todoController.putTodo(todo!).then((value) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("$value"),
                            ));
                          });
                        },
                        child: buildCallContainer(
                          'put',
                          Color(0xFFF1BEE7),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          todoController
                              .updatePatchCompleted(todo!)
                              .then((value) {
                            print('result value : ${value}');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 500),
                                content: Text('$value'),
                              ),
                            );
                          });
                        },
                        child: buildCallContainer(
                          'petch',
                          Color(0xFFFFCDD2),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('delete 버튼 누름');
                          var response =
                              todoController.deleteTodo(todo!).then((value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('del ok'),
                              ),
                            );
                          });
                        },
                        child: buildCallContainer(
                          'del',
                          Color.fromARGB(255, 252, 221, 224),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 0.5, //두께
            height: 0.5,
          );
        },
        itemCount: snapshot.data?.length ?? 0),
  );
}

Container buildCallContainer(String title, Color color) {
  return Container(
    width: 40.0,
    height: 40.0,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Center(
      child: Text(title),
    ),
  );
}
