import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_notes/add_notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key,required this.isActive,required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?
    CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    ) : CircleAvatar(
      radius: 36,
      backgroundColor: color,
    );
  }
}

class ColorListViewItem extends StatefulWidget {
  const ColorListViewItem({super.key});
  @override
  State<ColorListViewItem> createState() => _ColorListViewItemState();
}

class _ColorListViewItemState extends State<ColorListViewItem> {
  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2 + 2,
      child: ListView.builder(
          itemCount:kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding:const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    BlocProvider.of<AddNotesCubit>(context).color = kColors[index];
                    setState(() {});
                  },
                  child: ColorItem(
                    isActive: currentIndex == index,
                    color: kColors[index]
                  )
              )
            );
          }),
    );
  }
}
