import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:my_notes/constants/colors.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: CustomScrollView(
        //clipBehavior: Clip.antiAlias,
        slivers: [
          SliverAppBar(
            leading: const Icon(
              Icons.search,
            ),
            actions: const [
              Icon(
                Icons.grid_view,
              ),
              Icon(
                Icons.settings_outlined,
              ),
            ],
            backgroundColor: primaryColor,
            foregroundColor: secondaryColor,
            title: const Text('Notes'),
            centerTitle: true,
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return GestureDetector(
                onTap: () {
                  log('$index detected');
                },
                child: Container(
                  margin: const EdgeInsets.all(4.5),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4.5)),
                    color: secondaryColor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    style: const TextStyle(color: primaryColor),
                    'This is obj $index',
                  ),
                  //constraints: BoxConstraints(maxHeight: ),
                ),
              );
            }, childCount: 14),
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        foregroundColor: primaryColor,
        splashColor: primaryColor,
        mini: true,
        tooltip: 'Add a new note',
        child: const Icon(Icons.add),
        onPressed: () {
          log('Add pressed');
        },
      ),
    );
  }
}
