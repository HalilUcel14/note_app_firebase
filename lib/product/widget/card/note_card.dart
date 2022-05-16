import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart/app_style.dart';

Widget noteCard({Function()? onTap, required QueryDocumentSnapshot doc}) {
  //
  int colorId = doc['color_id'];
  String noteTitle = doc['note_title'];
  String creationDate = doc['creating_date'];
  String noteContent = doc['note_content'];
  //
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[colorId],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(noteTitle, style: AppStyle.mainTitle),
          const SizedBox(
            height: 4.0,
          ),
          Text(creationDate, style: AppStyle.dateTitle),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            noteContent,
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
        ],
      ),
    ),
  );
}
