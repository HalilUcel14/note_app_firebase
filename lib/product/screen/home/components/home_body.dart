import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hucel_core/hucel_core.dart';
import 'package:note_app/constants.dart/app_string.dart';
import 'package:note_app/product/widget/card/note_card.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title_text(),
          sizedbox(),
          streamBuild(context),
        ],
      ),
    );
  }

  Widget streamBuild(BuildContext context) {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection(AppString.noteColleciton)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return myStreamBuilderHelper(
            snapshot: snapshot,
            connectionActive: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: snapshot.data!.docs
                  .map(
                    (note) => noteCard(
                      onTap: (() {}),
                      doc: note,
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }

  SizedBox sizedbox() {
    return const SizedBox(
      height: 20.0,
    );
  }

  Text title_text() {
    return Text(
      "Your Recent Notes",
      style: GoogleFonts.roboto(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    );
  }
}
