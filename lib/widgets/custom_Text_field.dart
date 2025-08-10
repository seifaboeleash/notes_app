import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({  required this.hint,this.maxLines ,this.onSaved,this.onChanged });
  String? hint ;
  void Function(String?)? onSaved ;
  void Function(String)? onChanged;
  int? maxLines ;
  
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'This Field is Required';
        } else{
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      onSaved: onSaved,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText:hint ,
        hintStyle:const  TextStyle(
          color: kPrimaryColor
        ),
        enabledBorder:  buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        errorBorder: buildBorder(),
        focusedErrorBorder: buildBorder()
        ),
        
       
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
