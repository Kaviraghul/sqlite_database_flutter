import 'package:exploring_sqlite/app/database/db_helper.dart';
import 'package:exploring_sqlite/app/widgets/task_addition_button.dart';
import 'package:exploring_sqlite/domain/models.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DBHelper? dbHelper;
  late Future<List<Note>> notesList;

  @override
  void initState() {
    dbHelper = DBHelper();
    loadData();
    super.initState();
  }

  loadData() async {
    notesList = dbHelper!.getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes app"),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: FutureBuilder(
              future: notesList,
              builder: (context, AsyncSnapshot<List<Note>> snapshot) {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(8),
                        title: Text(snapshot.data![index].title.toString()),
                        subtitle:
                            Text(snapshot.data![index].description.toString()),
                        trailing: Text(snapshot.data![index].age.toString()),
                      ),
                    );
                  },
                );
              }),
        )
      ]),
      bottomNavigationBar: taskAddingButton(() => newTask, "New Task"),
    );
  }

  newTask() {
    dbHelper!
        .insert(Note(
          title: "first name",
          age: 24,
          description: "first sql project",
          email: "firstemail@gmail.com",
        ))
        .then((value) => print("data addes"))
        .onError((error, stackTrace) => print(error));
  }
}
