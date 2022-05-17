import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart/app_string.dart';
import 'package:note_app/constants.dart/app_style.dart';

Widget noteCard({Function()? onTap, required QueryDocumentSnapshot doc}) {
  //
  final appString = AppString.instance;
  //
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[doc[appString.colorId]],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(doc[appString.noteTitle], style: AppStyle.mainTitle),
          ),
          const Divider(),
          Text(
            "  ${doc[appString.noteContent]}",
            style: AppStyle.mainContent,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          const Divider(),
          Center(
            child: Text(doc[appString.creationDate], style: AppStyle.dateTitle),
          ),
        ],
      ),
    ),
  );
}
