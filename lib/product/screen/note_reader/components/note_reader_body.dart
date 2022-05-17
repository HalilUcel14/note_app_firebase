import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart/app_string.dart';
import '../../../../constants.dart/app_style.dart';

class NoteReaderBody extends StatelessWidget {
  NoteReaderBody({Key? key, required this.doc}) : super(key: key);
  //
  final QueryDocumentSnapshot doc;
  final appString = AppString.instance;
  //

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          Expanded(
            child: Text(
              "  ${doc[appString.noteContent]}",
              style: AppStyle.mainContent.copyWith(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.black,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Center(
            child: Text(doc[appString.creationDate], style: AppStyle.dateTitle),
          ),
        ],
      ),
    );
  }
}
