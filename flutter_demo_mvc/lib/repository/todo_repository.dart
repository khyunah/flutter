import 'dart:convert';

import 'package:flutter_demo_mvc/models/todo.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository {
  String dataURL = 'https://jsonplaceholder.typicode.com';

  @override
  Future<String> deletedTodo(Todo todo) async {
    var url = Uri.parse('$dataURL/todos/${todo.id}');
    var response = await http.delete(url);
    return 'ok';
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList = [];

    var url = Uri.parse('$dataURL/todos');
    var response = await http.get(url);

    print('status code : ${response.statusCode}');
    print('status code : ${response.body}');

    var body = json.decode(response.body);
    print('decode body : $body');
    // 파싱해야함
    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }
    return todoList;
  }

  // REST API
  // GET, DELETE 는 BODY 없음
  // POST, PUT, PATCH는 BODY 있음
  @override
  Future<String> patchCompleted(Todo todo) async {
    var uri = Uri.parse('$dataURL/todos/${todo.id}');
    String resData = '';
    await http.patch(
      uri,
      body: {
        'completed': (!todo.completed!).toString(),
        //'completed': 'true',
      },
    ).then((response) {
      print('response : ${response.body}');
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['completed'];
    });
    return resData;
  }

  @override
  Future<String> postTodo(Todo todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

/*
    id: 1,
    title: 'foo',
    body: 'bar',
    userId: 1,

*/
  @override
  Future<String> putCompleted(Todo todo) async {
    var uri = Uri.parse('$dataURL/todos/${todo.id}');
    String resData = '';
    await http.put(uri, body: {
      'id': '${todo.id}',
      'title': '${todo.title}',
      'completed': '${todo.completed}',
      'userId': '${todo.userId}',
    }).then((response) {
      print('put 응답 완료');
      Map<String, dynamic> result = json.decode(response.body);
      resData = result['title'];
    });
    return resData;
  }
}
