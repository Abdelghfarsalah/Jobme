import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class select extends StatefulWidget {
  const select({super.key,required this.text,required this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  State<select> createState() => _selectState();
}

class _selectState extends State<select> {
  bool selected=false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){setState(() {
        
        selected=!selected;
      });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: kcolor
                  )
                ),
                child: selected?const Center(child:  Icon(Icons.done,size: 25,color: kcolor,)):const Text(''),
              ),
          const  SizedBox(
              width: 15,
            ),
            Text(widget.text,style:const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),)
            ],
        ),
      ),
    );
  }
}