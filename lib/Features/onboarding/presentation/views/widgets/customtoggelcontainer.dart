import 'package:flutter/material.dart';

class customtoggelcontainer extends StatelessWidget {
  const customtoggelcontainer({super.key,required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 6,
        width: MediaQuery.of(context).size.width*0.24,
        decoration: BoxDecoration(
          borderRadius:const BorderRadius.only(topLeft:const Radius.circular(50),topRight: Radius.circular(50)),
          color: color,
          
        ),
      ),
    );
  }
}