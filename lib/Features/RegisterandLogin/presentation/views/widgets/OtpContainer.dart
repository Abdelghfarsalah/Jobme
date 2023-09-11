import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class Otpconstainerr extends StatelessWidget {
  const Otpconstainerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 75,
        width: 75,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color(0xffE5ECFA)),
          child:const Padding(
            padding:  EdgeInsets.symmetric(horizontal:30),
            child:  Center(
              child:  TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),
                decoration: InputDecoration(
                border: InputBorder.none,
              ),),
            ),
          )),
    );
  }
}