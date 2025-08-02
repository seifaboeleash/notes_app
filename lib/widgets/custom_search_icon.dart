import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 45 ,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white10,
       borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: (){}, icon: Icon(Icons.search),),
    );
  }
}