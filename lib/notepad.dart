import 'package:flutter/material.dart';

import 'database/note.dart';

class NotePad extends StatefulWidget {
  final Note note;
  const NotePad({Key? key, required this.note}) : super(key: key);

  @override
  _NotePadState createState() => _NotePadState();
}

class _NotePadState extends State<NotePad> {
  late TextEditingController textTitleController;
  late TextEditingController textBodyController;

  void _syncNoteListner() {
    setState(() {
      widget.note.body = textBodyController.text;
      widget.note.title = textTitleController.text;
    });
  }

  @override
  void initState() {
    textTitleController = TextEditingController(text: widget.note.title);
    textTitleController.addListener(_syncNoteListner);
    textBodyController = TextEditingController(text: widget.note.body);
    textBodyController.addListener(_syncNoteListner);
    super.initState();
  }

  @override
  void dispose() async {
    textBodyController.removeListener(_syncNoteListner);
    textTitleController.removeListener(_syncNoteListner);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Editing Note: ${widget.note.title}')),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
              controller: textTitleController,
            ),
          ),
          TextField(
            maxLines: null,
            autofocus: true,
            controller: textBodyController,
          )
        ]));
  }
}
