// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'note_list.dart';
import 'random_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: const _ProjectList(),
      theme: ThemeData(
        // Add the 5 lines from here...
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}

class _ProjectList extends StatelessWidget {
  const _ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildNavItem(String title, Widget destination) => ListTile(
          title: Text(title),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => destination));
          },
        );

    return Scaffold(
        appBar: AppBar(title: const Text('Project list')),
        body: ListView(
          children: [
            buildNavItem('Random Names', const RandomWords()),
            buildNavItem('Notes', const NotesList())
          ],
        ));
  }
}
