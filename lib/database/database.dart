// import 'package:built_collection/built_collection.dart';
// import 'package:flutter/widgets.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// import 'note.dart';

// const _databaseName = 'note_database.db';

// class DatabaseController {
//   static final DatabaseController db = DatabaseController();

//   final Future<Database> _database = _initDatabase;

//   static Future<Database> get _initDatabase async {
//     // Avoid errors caused by flutter upgrade.
//     // Importing 'package:flutter/widgets.dart' is required.
//     WidgetsFlutterBinding.ensureInitialized();
//     // Open the database and store the reference.
//     return openDatabase(
//       // Set the path to the database. Note: Using the `join` function from the
//       // `path` package is best practice to ensure the path is correctly
//       // constructed for each platform.
//       join(await getDatabasesPath(), _databaseName),
//       onCreate: (db, version) {
//         return db.execute(
//             'CREATE TABLE NOTES(id STRING PRIMARY KEY, title TEXT, body TEXT');
//       },
//       version: 1,
//     );
//   }

//   Future<void> insetNote(Note note) async {
//     final db = await _database;
//     await db.insert(_databaseName, note.toJson(),
//         conflictAlgorithm: ConflictAlgorithm.replace);
//   }

//   Future<BuiltList<Note>> notes() async {
//     final db = await _database;
//     final notes = await db.query(_databaseName);
//     return notes.map((json) => Note.fromJson(json)).toBuiltList();
//   }

//   Future<void> updateNote(Note note) async {
//     final db = await _database;
//     await db.update(_databaseName, note.toJson(),
//         // Pass the Dog's id as a whereArg to prevent SQL injection.
//         where: 'id = ?',
//         whereArgs: [note.key]);
//   }
// }
