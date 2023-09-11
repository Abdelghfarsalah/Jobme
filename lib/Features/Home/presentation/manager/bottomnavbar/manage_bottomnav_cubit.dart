import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/Companies.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/Jopapp.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/home.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/savedPage.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/homebody.dart';
import 'package:meta/meta.dart';

part 'manage_bottomnav_state.dart';

class ManageBottomnavCubit extends Cubit<ManageBottomnavState> {
  ManageBottomnavCubit() : super(ManageBottomnavInitial());
  int currentIndex=0;
  List<Widget> list=const [
    homebody(),
    savedpage(),
    Jopapplication(),
    companies(),
    savedpage(),
  ];
  void changeindex({required int index}){
    currentIndex=index;
    emit(change());
  }
}
