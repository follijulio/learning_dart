// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:miau/miau.dart' as miau;

Future main() async {
  print(miau.toInt('199'));
  //final todo = await teste_assincrono();
  //print(todo.title);
}

Future<Todo> teste_assincrono() async {
  var urlVar = "https://jsonplaceholder.typicode.com/todos/1";
  Uri url = Uri.parse(urlVar);
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var todo = Todo.fromJson(json);
  return todo;
}

class Todo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  Todo({
    required this.title,
    required this.id,
    required this.userId,
    required this.completed,
  });

  factory Todo.fromJson(Map json) {
    return Todo(
        title: json['title'],
        id: json['id'],
        userId: json['userId'],
        completed: json['completed']);
  }
}
