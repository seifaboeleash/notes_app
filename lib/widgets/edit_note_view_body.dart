import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_Text_field.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
   const EditNoteViewBody({super.key, required this.note,});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24
  ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ), 
             CustomAppBar(
              onPressed: () {
                widget.note.title =title ?? widget.note.title;
                widget.note.subTitle =subTitle ?? widget.note.subTitle;
                widget.note.save();
                Navigator.pop(context);
                BlocProvider.of<NotesCubit>(context).fetchNotes();
              },
              title: 'Edit Note',
              icon: Icons.check,
               ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChanged: (value) {
                  title =value;
              }, 
              hint: widget.note.title
              ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChanged: (value) {
                subTitle =value;
              },
              hint:widget.note.subTitle,
             maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}