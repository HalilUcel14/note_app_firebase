import 'package:flutter/material.dart';
import 'package:note_app/constants.dart/app_style.dart';
import 'package:note_app/product/screen/note_editor/note_editor.dart';

class NoteEditorBody extends StatefulWidget {
  const NoteEditorBody({
    Key? key,
  }) : super(key: key);
  //

  @override
  State<NoteEditorBody> createState() => _NoteEditorBodyState();
}

class _NoteEditorBodyState extends State<NoteEditorBody> {
  @override
  void initState() {
    textTitleController = TextEditingController();
    textContentController = TextEditingController();
    super.initState();
  }

  //
  @override
  Widget build(BuildContext context) {
    //
    String date = DateTime.now().toString();
    //
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: _titleText()),
          const SizedBox(height: 28.0),
          Expanded(child: _contentText()),
          const Divider(
            color: Colors.black,
            height: 3,
          ),
          const SizedBox(height: 8.0),
          Text(
            date,
            style: AppStyle.dateTitle,
          ),
        ],
      ),
    );
  }

  //
  Widget _titleText() {
    return TextFormField(
      controller: textTitleController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          gapPadding: 20,
        ),
        hintText: 'Enter Note Title',
      ),
      style: AppStyle.mainTitle,
    );
  }

  //
  Widget _contentText() {
    return TextField(
      controller: textContentController,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'Enter Note Content',
      ),
      style: AppStyle.mainContent,
    );
  }
}
