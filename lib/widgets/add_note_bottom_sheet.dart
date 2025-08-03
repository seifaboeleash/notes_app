import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Text_field.dart';
import 'package:notes_app/widgets/custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            const SizedBox(
              height: 20,
            ),
            const   CustomButton(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
