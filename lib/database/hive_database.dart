import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'note.dart';

class HiveDatabase {
  static final db = HiveDatabase._();

  static const _notesBox = 'notesBox';

  final Future<Box<Note>> _box = _init();

  HiveDatabase._();

  static Future<Box<Note>> _init() async {
    Directory directory =
        await path_provider.getApplicationDocumentsDirectory();

    Hive
      ..init(directory.path)
      ..registerAdapter(NoteAdapter());

    return Hive.openBox<Note>(_notesBox);
  }

  Future<BuiltList<Note>> notes() async {
    final db = await _box;
    return db.values.toBuiltList();
  }

  Future<void> updateNote(Note note) async {
    final db = await _box;
    return db.put(note.key, note);
  }
}
