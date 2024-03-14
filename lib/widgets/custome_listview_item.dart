import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custome_note_item.dart';

class CustomeListViewItem extends StatelessWidget {
  const CustomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 24.0),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: CustomeNoteItem(),
        );
      },
    );
  }
}
