import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class ColorListItem extends StatefulWidget {
  const ColorListItem({super.key});
  @override
  State<ColorListItem> createState() => _ColorListItemState();
}

class _ColorListItemState extends State<ColorListItem> {
  int currentIndex = 0 ;
  List<Color> colors =const [
    Color(0xff2DFA6A),
    Color(0xff66ABFA),
    Color(0xff776CD7),
    Color(0xffB68EDE),
    Color(0xffB95F89),
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2 + 2,
      child: ListView.builder(
          itemCount:colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding:const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    BlocProvider.of<AddNotesCubit>(context).color = colors[index];
                    setState(() {});
                  },
                  child: ColorItem(
                    isActive: currentIndex == index,
                    color: colors[index]
                  )
              )
            );
          }),
    );
  }
}
