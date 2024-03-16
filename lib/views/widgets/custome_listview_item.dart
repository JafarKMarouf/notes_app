import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_note_item.dart';

class CustomeListViewItem extends StatelessWidget {
  const CustomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 15,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CustomeNoteItem(),
          );
        },
      ),
    );
  }
}
