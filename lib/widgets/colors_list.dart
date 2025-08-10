import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.isActive, required this.color});
  final bool isActive ;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?  CircleAvatar(
      backgroundColor: Colors.white,
      radius: 38,
      child: CircleAvatar(
        radius: 35,
        backgroundColor: color,
      ),
    ) 
      : CircleAvatar(
        radius: 35,
        backgroundColor:color,
      
    );
  }
}
class colorListView extends StatefulWidget {
  const colorListView({super.key});

  @override
  State<colorListView> createState() => _colorListViewState();
}

class _colorListViewState extends State<colorListView> {
   int currentIndex =0 ;
   List<Color> colors = const [
    Colors.amber,
    Colors.blue,
    Colors.red,
    Colors.green,
    kPrimaryColor,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder:(context,index){
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: (){
                currentIndex = index ;
                setState(() {
                  
                });
              },
              child: colorItem(
                 color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
            );
        },),
    );
  }
}