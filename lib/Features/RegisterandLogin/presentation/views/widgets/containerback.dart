import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class back extends StatelessWidget {
  const back({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: 40,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color(0xffE5ECFA)),
          child:const Center(child: Icon(Icons.arrow_back_ios,color: kcolor,size:20 ,)),
      ),
    );
  }
}