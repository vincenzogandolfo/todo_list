import 'package:flutter/material.dart';
import 'package:todo_list/pages/partials/home_page_sidebar.dart';
import 'package:todo_list/pages/partials/home_page_body.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notes = [];

  void addNote() {
    setState(() {
      notes.add('New Note');
    });
  }

  void deleteNote(String note) {
    setState(() {
      notes.remove(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            HomePageSidebar(addNote: addNote),
            Positioned(
              left: 60,
              right: 0,
              top: 0,
              bottom: 0,
              child: HomePageBody(notes: notes, deleteNote: deleteNote),
            ),
          ],
        ),
      ),
    );
  }
}
