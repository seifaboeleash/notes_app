import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({  this.hint,this.maxLines });
  String? hint ;
  Function(String)?onSubmitted;
  int? maxLines ;
  
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText:hint ,
        hintStyle:const  TextStyle(
          color: Color(0xff62FcD7)
        ),
        enabledBorder:  buildBorder(),
        focusedBorder: buildBorder(Color(0xff62FcD7)),
       
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
