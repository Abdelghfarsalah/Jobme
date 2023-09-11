import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class custombuttonnoarrow extends StatefulWidget {
   custombuttonnoarrow({
    required this.name,
    this.color,
    super.key,required this.onTap,required this.width});
  final void Function()? onTap;
  final double width;
  final String name;
    Color? color=kcolor ;

  @override
  State<custombuttonnoarrow> createState() => _custombuttonnoarrowState();
}

class _custombuttonnoarrowState extends State<custombuttonnoarrow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding:const EdgeInsets.only(),
        height: 48,
        width: widget.width,
        decoration: BoxDecoration(
          color:kcolor,
          borderRadius: BorderRadius.circular(8)),

      child: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.name,
                  style:const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.2,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),),

        ],
      )),
      ),
    );
  }
}