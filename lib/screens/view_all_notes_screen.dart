import 'package:flutter/material.dart';
import 'package:shared_group_52/controllers/db/offline/shared_helper.dart';
import 'package:shared_group_52/models/note_model.dart';

class ViewAllNotesScreen extends StatefulWidget {
  const ViewAllNotesScreen({super.key});

  @override
  State<ViewAllNotesScreen> createState() => _ViewAllNotesScreenState();
}

class _ViewAllNotesScreenState extends State<ViewAllNotesScreen> {
  _getData() {
    var list = SharedHelper.prefs.getStringList("notes") ?? [];

    for (var element in list) {
      var item = NoteModel.fromString(element);
      notes.add(item);
    }
  }

  List<NoteModel> notes = [];

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All notes"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return Card(
            child: ListTile(
              title: Text(notes[i].title!),
              subtitle: Text("${notes[i].dateTime}\n${notes[i].body}"),
            ),
          );
        },
        itemCount: notes.length,
      ),
    );
  }
}
