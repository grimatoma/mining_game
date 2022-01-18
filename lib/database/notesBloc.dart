import 'dart:async';

import 'package:built_collection/built_collection.dart';

import 'hive_database.dart';
import 'note.dart';

class NotesBloc {
  final _notesController = StreamController<BuiltList<Note>>.broadcast();

  Stream<BuiltList<Note>> get notes => _notesController.stream;

  NotesBloc() {
    reloadNotes();
  }

  Future<void> reloadNotes() async {
    _notesController.sink.add(await HiveDatabase.db.notes());
  }

  void dispose() {
    _notesController.close();
  }

  Future<void> updateNote(Note note) async {
    await HiveDatabase.db.updateNote(note);
    await reloadNotes();
  }

  Future<void> createNote(Note note) async {
    await HiveDatabase.db.updateNote(note);
    await reloadNotes();
  }
}
