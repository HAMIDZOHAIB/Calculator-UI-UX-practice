import 'dart:ui';

import 'package:flutter/material.dart';
import 'constant.dart';


class MyButton extends StatelessWidget {
  String title;
   Color color;
   final VoidCallback onpress;
  MyButton({super.key,required this.title,
    this.color= const Color(0xffa5a5a5),
    required this .onpress,

  });

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 70,
            width: 70,
                
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(40)
            ),
            child: Center(
              child: Text(title,style: design,),
            ),
          ),
        ),
      ),
    ) ;
  }
}