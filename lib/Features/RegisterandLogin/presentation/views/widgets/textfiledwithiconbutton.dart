import 'package:flutter/material.dart';

class customtextfiledwithiconbutton extends StatelessWidget {
  const customtextfiledwithiconbutton({super.key,required this.onChanged,required this.hint,required this.icon,required this.validator});
  final String? Function(String?)? validator;
  final IconButton icon;
  final hint;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged:onChanged ,
      style: TextStyle( height: 0.48),
      decoration: InputDecoration(
      
      filled: true,
      fillColor: Color(0xffCFDDFB),
      border:const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      hintText: hint,
      prefixIcon: icon
      ),
    );
  }
}