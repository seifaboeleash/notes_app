import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/edit_note_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note, });
  final NoteModel note;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
           MaterialPageRoute(builder: (context){
            return const EditNoteView();
          }),);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16 , bottom: 16),
        decoration: BoxDecoration(
            color: kPrimaryColor,
             borderRadius: BorderRadius.circular(16),
             ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                note.title,
                style:const TextStyle(
                  color: Colors.black,
                   fontSize: 26
                   ),
              ),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16 , bottom: 16),
                child:   Text(
                  note.subTitle,
                  style: const TextStyle(
                    color: Colors.black45,
                     fontSize: 18,),
                     
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                },
                icon: const Icon(FontAwesomeIcons.trash ),
                color: Colors.black,
                iconSize: 30,
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(
                right: 8.0 , bottom: 16.0,
                ),
              child:  Text(
               note.date ,
                 style:const TextStyle(
                  color: Colors.black26 , fontSize: 16),
                  ),
            )
          ],
        ),
      ),
    );
  }
}


