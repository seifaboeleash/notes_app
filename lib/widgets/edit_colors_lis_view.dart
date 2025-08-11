import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';

class editNoteColorsList extends StatefulWidget {
  const editNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<editNoteColorsList> createState() => _editNoteColorsListState();
}

class _editNoteColorsListState extends State<editNoteColorsList> {
  int currentIndex =0;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder:(context,index){
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: (){
                currentIndex=index;
                widget.note.color=kColors[index].value;
                setState(() {
                  
                });
              },
              child: colorItem(
                 color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
            );
        },),
    );
  }
}