import 'package:flutter/material.dart';

class customtextfiledwithiconbutton extends StatefulWidget {
   customtextfiledwithiconbutton({
  
  super.key,
  this.onTap,
  required this.controller,
  required this.onChanged,required this.hint,required this.icon,required this.validator});
  final String? Function(String?)? validator;
  final IconButton icon;
  final hint;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  void Function()? onTap;
  @override
  State<customtextfiledwithiconbutton> createState() => _customtextfiledwithiconbuttonState();
}

class _customtextfiledwithiconbuttonState extends State<customtextfiledwithiconbutton> {
  
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller ,
      onTap:widget.onTap ,
      validator: widget.validator,
      onChanged:widget.onChanged ,
      style: TextStyle( height: 0.48),
      decoration: InputDecoration(
      
      filled: true,
      fillColor: Color(0xffCFDDFB),
      border:const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      hintText: widget.hint,
      prefixIcon: widget.icon
      ),
    );
  }
}