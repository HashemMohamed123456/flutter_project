import 'package:flutter/material.dart';
class TextCustom extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const TextCustom({required this.text,this.color=Colors.black,this.fontSize=20,this.fontWeight,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color:color,fontSize:fontSize,fontWeight:fontWeight   ),);
  }
}
