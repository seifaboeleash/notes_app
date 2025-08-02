import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16 , bottom: 16),
      decoration: BoxDecoration(
          color: Color(0xffFFCC80),
           borderRadius: BorderRadius.circular(16),
           ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                 fontSize: 26
                 ),
            ),
            subtitle: const Padding(
              padding: const EdgeInsets.only(top: 16 , bottom: 16),
              child: const  Text(
                'Build your Career with Tharwat Samy',
                style: TextStyle(
                  color: Colors.black45,
                   fontSize: 20,),
                   
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.trash),
              color: Colors.black,
            ),
          ),
         const  Padding(
            padding: const EdgeInsets.only(
              right: 8.0 , bottom: 16.0,
              ),
            child: const Text(
              'Agust 2 , 2025' ,
               style: TextStyle(
                color: Colors.black26 , fontSize: 16),
                ),
          )
        ],
      ),
    );
  }
}
