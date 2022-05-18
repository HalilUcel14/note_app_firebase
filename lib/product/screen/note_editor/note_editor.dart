import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hucel_core/hucel_core.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart/app_style.dart';
import 'package:note_app/product/screen/note_editor/components/note_editor_body.dart';

import '../../../constants.dart/app_string.dart';

late final TextEditingController textTitleController;
late final TextEditingController textContentController;

class NoteEditorScreen extends StatelessWidget {
  const NoteEditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int colorId = AppStyle.cardsColor.length.randomValue;
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[colorId],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[colorId],
        title: const Text("Add a new Note"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String date = DateTime.now().toString();
          final _appString = AppString.instance;
          FirebaseFirestore.instance.collection(AppString.noteColleciton).add({
            _appString.noteTitle: textTitleController.text,
            _appString.creationDate: date,
            _appString.noteContent: textContentController.text,
            _appString.colorId: colorId,
          }).then((value) {
            Navigator.pop(context);
          }).catchError((error) => print("$error"));
        },
        child: const Icon(
          Icons.save,
        ),
      ),
      body: const NoteEditorBody(),
    );
  }
}
