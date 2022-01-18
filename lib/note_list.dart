import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:mining_game/database/notesBloc.dart';

import 'database/note.dart';
import 'notepad.dart';

class NotesList extends StatefulWidget {
  const NotesList({Key? key}) : super(key: key);

  @override
  _NotesListState createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  final notesBloc = NotesBloc();
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    notesBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Project list')),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: createNote, child: const Text('Create New Note')),
            const Align(alignment: Alignment.topLeft, child: Text('Notes')),
            Expanded(child: _buildNoteList()),
          ],
        ));
  }

  void createNote() async {
    const disabledColor = Colors.grey;
    const enabledColor = Colors.blue;
    Color createButtonColor = disabledColor;

    void updateCreateButtonColor() {
      createButtonColor =
          nameController.text.isEmpty ? disabledColor : enabledColor;
    }

    nameController.clear();
    updateCreateButtonColor();

    await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setDialogState) {
            void closeDialog() {
              Navigator.of(context).pop();
            }

            return AlertDialog(
              title: const Text('New Note'),
              content: Column(
                children: [
                  TextField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      label: Text('Choose a name'),
                    ),
                    controller: nameController,
                    onChanged: (value) {
                      setDialogState(() {
                        updateCreateButtonColor();
                      });
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(onPressed: closeDialog, child: const Text('Cancel')),
                TextButton(
                    style: TextButton.styleFrom(primary: createButtonColor),
                    onPressed: () {
                      if (nameController.text.isNotEmpty) {
                        final newNote = Note(nameController.text);
                        closeDialog();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NotePad(note: newNote))).then((value) {
                          setState(() {
                            notesBloc.createNote(newNote);
                          });
                        });
                      }
                    },
                    child: const Text('Create')),
              ],
            );
          });
        });
  }

  Widget _buildNoteList() {
    return StreamBuilder<BuiltList<Note>>(
        stream: notesBloc.notes,
        builder: (context, snapshot) {
          final notes = snapshot.data;
          if (notes == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView(
                children: notes
                    .map((note) => ListTile(
                          title: Text(note.title),
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(
                                    builder: (context) => NotePad(note: note)))
                                .then((value) => notesBloc.updateNote(note));
                          },
                        ))
                    .toList());
          }
        });
  }
}
