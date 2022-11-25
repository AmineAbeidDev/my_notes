import 'package:my_notes/storage/local_storage/local_storage_manager.dart';
import 'package:my_notes/constants/colors.dart';
import 'package:my_notes/view/note_view.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:my_notes/view/notes_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalStorage().createDb();

  log('database runtimeType: ${LocalStorage().database.runtimeType.toString()}');
  log('database toString ${LocalStorage().database.toString()}');
  // await LocalStorage().insertNote(Note(
  //   content: 'Content test 2',
  //   created: 'created test 2',
  //   lastUpdate: 'last update test 2',
  // ));
  // await LocalStorage().deleteAllNotes();
  // await LocalStorage().printDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: NotesView(),
        backgroundColor: primaryColor,
      ),
    );
  }
}
