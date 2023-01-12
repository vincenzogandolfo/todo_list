import 'package:flutter/material.dart';
import 'package:todo_list/components/note.dart';

class HomePageBody extends StatelessWidget {
  final List<String> notes;
  final void Function(String note) deleteNote;

  const HomePageBody({required this.notes, required this.deleteNote});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Agenda',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: notes
                    .map(
                      (note) => Note(
                        text: note,
                        onDoubleTap: () => deleteNote(note),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
