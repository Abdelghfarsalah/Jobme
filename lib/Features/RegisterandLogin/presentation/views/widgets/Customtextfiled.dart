import 'package:flutter/material.dart';

class customtextfiled extends StatelessWidget {
  const customtextfiled({super.key,
  required this.onChanged,
  this.controller,
  required this.hint,
   this.icon,required this.validator,this.onTap,
   this.suffixIcon,this.keyboardType,
   required this.obscureText});
  final String? Function(String?)? validator;
  final Widget? icon;
  final hint;
  final TextEditingController? controller;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      onTap: onTap,
      obscureText: obscureText ,
      validator: validator,
      onChanged:onChanged ,
      style: TextStyle( height: 0.48),
      decoration: InputDecoration(
      suffixIcon:suffixIcon ,
      filled: true,
      fillColor:const Color(0xffCFDDFB),
      border:const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      hintText: hint,
      prefixIcon: icon
      ),
    );
  }
}