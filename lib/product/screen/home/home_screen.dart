import 'package:flutter/material.dart';
import 'package:note_app/constants.dart/app_style.dart';
import 'package:note_app/product/screen/home/components/home_body.dart';
import 'package:note_app/product/screen/note_editor/note_editor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.mainColor,
      appBar: AppBar(
        title: const Text("Note_Firebase"),
      ),
      body: const HomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const NoteEditorScreen())));
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
