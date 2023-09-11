import 'package:flutter/material.dart';

class numberpage extends StatelessWidget {
  const numberpage({super.key,required this.number});
  final String number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(number,  style:const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xff343A40)),),
    );
  }
}