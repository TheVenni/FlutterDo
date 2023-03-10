import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

  // list of todo tasks
  List toDoList = [];

  // reference my box
  final _flutterBox = Hive.box('FlutterBox');

  // run this method if this is the 1st time ever opening it
  void createInicialData() {
    toDoList = [
      ["First Task", "Some random desc", false],
      ["Second Task", "Some random desc", false]
    ];
  }

  // load the data from the hive box

  void loadData() {
    toDoList = _flutterBox.get('TODOLIST');
  }
  // close box

  // update the database
  void updateData() {
    _flutterBox.put('TODOLIST', toDoList);
  }

}