import 'package:flutter/material.dart';
import 'package:shared_group_52/controllers/db/offline/shared_helper.dart';
import 'package:shared_group_52/models/note_model.dart';

class CreateNoteScreen extends StatelessWidget {
  CreateNoteScreen({super.key});

  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: bodyController,
              minLines: 5,
              maxLines: 10,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Body",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var newNote = NoteModel(
                  title: titleController.text,
                  body: bodyController.text,
                  dateTime: DateTime.now().toString(),
                ).toMap();

                List<String> list =
                    SharedHelper.prefs.getStringList('notes') ?? [];

                list.add(newNote);
                await SharedHelper.prefs.setStringList('notes', list);

                titleController.text = "";
                bodyController.text = "";
              },
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
