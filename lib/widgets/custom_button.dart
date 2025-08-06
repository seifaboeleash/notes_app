import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({super.key, required this.onTap,  this.isLoading = false, });
final void Function()? onTap ;
final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child:  Center(
          child: isLoading ? const CircularProgressIndicator(
            color: Colors.black,
          ) : 
          const Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              ),
          ),
        ),
      ),
    );
  }
}
