import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Text_field.dart';
import 'package:notes_app/widgets/custom_button.dart';

class AddNoteForm extends StatefulWidget {
   AddNoteForm({super.key});
  @override
  State<AddNoteForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey =GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title ,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
            children: [
              CustomTextField(
                onSaved: (value) {
                  title =value;
                },
                hint: 'title'
                ),
              const SizedBox(
                height: 20,
              ),
               CustomTextField(
                onSaved: (value){
                  subTitle =value;
                },
                hint: 'content',
               maxLines: 5,
              ),
              const SizedBox(
                height: 20,
              ),
                CustomButton(
                onTap: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                  } else{
                    autovalidateMode =AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
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