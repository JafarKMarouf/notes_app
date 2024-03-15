import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custome_listview_item.dart';
import 'package:notes_app/widgets/customer_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child:  Column(
        children:[
          SizedBox(height: 60,),
          CustomeAppBar(),
          Expanded(
              child: CustomeListViewItem(),
          ),
        ],
      ),
    );
  }
}
