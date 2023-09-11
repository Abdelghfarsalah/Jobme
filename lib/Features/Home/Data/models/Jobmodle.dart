import 'package:flutter/material.dart';

class jobmodel{
  final Widget preimaryIocn;
  final String title;
  final String subtitle;
  final String place;
  final String price;
  final String hourc;
  final String work;
  bool love;
  jobmodel({
    required this.love,
    required this.preimaryIocn,
    required this.hourc,
    required this.work,
    required this.place,
    required this.price,
    required this.subtitle,
    required this.title
  });
}