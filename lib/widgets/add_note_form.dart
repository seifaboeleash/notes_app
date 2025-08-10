import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_Text_field.dart';
import 'package:notes_app/widgets/custom_button.dart';

class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});
  @override
  State<AddNoteForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'title'),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var formattedDate =DateFormat.yMMMd().format(DateTime.now()).toString();
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date:formattedDate,
                        color: kPrimaryColor.value,
                         );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                   
                    
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
