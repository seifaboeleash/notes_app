import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Text_field.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
            const CustomAppBar(title: 'Edit Note', icon: Icons.check),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'title'
              ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'content',
             maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}