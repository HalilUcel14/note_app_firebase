import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart/app_string.dart';
import 'package:note_app/constants.dart/app_style.dart';
import 'package:note_app/product/screen/note_reader/components/note_reader_body.dart';

class NoteReaderScreen extends StatelessWidget {
  NoteReaderScreen({Key? key, required this.doc}) : super(key: key);
  //
  final QueryDocumentSnapshot doc;
  final appString = AppString.instance;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[doc[appString.colorId]],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[doc[appString.colorId]],
        title: Text(
          doc[appString.noteTitle],
          style: AppStyle.mainTitle.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: NoteReaderBody(doc: doc),
    );
  }
}
