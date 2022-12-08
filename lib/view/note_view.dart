import 'package:my_notes/reusables/note_view_reusables.dart';
import 'package:my_notes/constants/colors.dart';
import 'package:flutter/material.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  late final TextEditingController _titleController;
  late final TextEditingController _textController;

  @override
  void initState() {
    _titleController = TextEditingController();
    _textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          cursorColor: secondaryColor,
          // onChanged: (value) => log(_titleController.text),
          controller: _titleController,
          cursorWidth: 3,
          autocorrect: false,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            // height: 0.5,
          ),
          decoration: const InputDecoration(
            hintText: 'Enter your title here',
            hintStyle: TextStyle(color: Colors.white70),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            border: OutlineInputBorder(gapPadding: 15),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: secondaryColor),
            ),
          ),
        ),
        ColoredBox(
          color: lighterPrimaryColor,
          child: SizedBox(
            height: 20,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Expanded(
          // padding: const EdgeInsets.all(15),
          child: TextField(
            cursorColor: secondaryColor,
            autocorrect: false,
            cursorWidth: 3,
            // onChanged: (value) => log(_textController.text),
            controller: _textController,
            keyboardType: TextInputType.multiline,
            maxLines: null,

            decoration: const InputDecoration(
              hintText: 'Start writing your note!',
              hintStyle: TextStyle(color: Colors.white70),
              border: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(
                15,
                0,
                15,
                0,
              ),
            ),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: darkerSecondaryColor,
              border: Border.all(color: Colors.white),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              )),
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.all(10),
          child: Container(
            color: secondaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                boxIcon(Icons.text_format),
                boxIcon(Icons.text_increase),
                boxIcon(Icons.font_download_outlined),
              ],
            ),
          ),
        )
      ],
    );
  }
}
