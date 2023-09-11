import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class custombutton extends StatelessWidget {
  const custombutton({
    required this.name,
    super.key,required this.onTap,required this.width});
  final void Function()? onTap;
  final double width;
  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(),
        height: 48,
        width: width,
        decoration: BoxDecoration(
          color: kcolor,
          borderRadius: BorderRadius.circular(8)),

      child: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name,
                  style:const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.2,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),),
    const  SizedBox(
        width: 15,
      ),
      const  Icon(FontAwesomeIcons.arrowRight,color: Colors.white,size: 15,weight: 700,)
        ],
      )),
      ),
    );
  }
}