import 'package:flutter/cupertino.dart';


import '../models/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      id: '1',
      createdTime: DateTime.now(),
      title: 'Buy Food 😋',
      description: '''- Eggs
- Milk
- Bread
- Water''',
    ),
    Todo(
       id: '2',
      createdTime: DateTime.now(),
      title: 'Plan family trip to Norway',
      description: '''- Rent some hotels
- Rent a car
- Pack suitcase''',
    ),
    Todo(
       id: '3',
      createdTime: DateTime.now(),
      title: 'Walk the Dog 🐕',
    ),
    Todo(
       id: '4',
      createdTime: DateTime.now(),
      title: 'Plan Jacobs birthday party 🎉🥳',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
