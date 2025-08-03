import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({  required this.hint,this.maxLines });
  String? hint ;
  Function(String)?onSubmitted;
  int? maxLines ;
  
  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText:hint ,
        hintStyle:const  TextStyle(
          color: kPrimaryColor
        ),
        enabledBorder:  buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor)),
       
    );
  }
  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
       borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: color ?? Colors.white
          ),
    );
  }
}
