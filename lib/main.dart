import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
  body: UsersList(),
  appBar: AppBar(title: Text("People")),)
  ));
}

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  final List<String> users = [
    "Дерябин",
    "Бочкарёв",
    "Абрамов",
    "Шишкин",
    "Гючер",
    "Хайруллин",
    "Болкисев",
  ];
  final List<String> authors = ["Бочкарёв", "Хайруллин"];
  @override
  Widget build(BuildContext context)  {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        if (authors.contains(users[index])) {
          return Text(users[index],
            style: TextStyle(color: Color.fromARGB(255, 230, 96, 96)));
        }
        return Text(users[index]);
      }
    );
  }
}