import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class EmailOrphone extends StatelessWidget {
  const EmailOrphone({super.key,required this.onTap,required this.icon,required this.selected,required this.word});
  final Icon icon;
  final String word;
  final  bool selected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height:66 ,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius:const BorderRadius.all(Radius.circular(8)),
          color: selected?Color.fromARGB(255, 72, 125, 231):const Color(0xffCFDDFB)
        ),
        child: Row(children: [
        const  SizedBox(width: 30,),
          icon,const  SizedBox(width: 15,),
          Text(word,style:const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),),
        ]),
      ),
    );
  }
}