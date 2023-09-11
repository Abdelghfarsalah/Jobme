import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class recenttype extends StatelessWidget {
  const recenttype({super.key,required this.onTap,required this.selected,required this.width,required this.text});
  final void Function()? onTap;
  final double? width;
  final String text;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap:onTap ,
        child: Container(
          height: 26,
          width: width,
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(18)),
            color:selected?kcolor:  const Color(0xffCFDDFB).withOpacity(0.2)),
        child: Center(child: Text(text,style:const TextStyle(
          color: Color(0xffCFDDFB),
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),),),
        ),
        
      ),
    );
  }
}