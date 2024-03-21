import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key,required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ?
    const CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 36,
        backgroundColor: Colors.blue,
      ),
    ) : const CircleAvatar(
      radius: 36,
      backgroundColor: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2 + 2,
      child: ListView.builder(
          itemCount:10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding:const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    setState(() {

                    });
                  },
                  child: ColorItem(isActive: currentIndex == index,)
              )
            );
          }),
    );
  }
}
