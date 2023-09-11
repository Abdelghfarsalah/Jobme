import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:meta/meta.dart';

part 'saved_job_state.dart';

class SavedJobCubit extends Cubit<SavedJobState> {
  SavedJobCubit() : super(SavedJobInitial());
  List<jobmodel> savedlist=[];

  void addtolist({required jobmodel model}){
    savedlist.add(model);
    emit(addSavedJob());
    emit(removeSavedJob());
  }
    void removetolist({required jobmodel model}){
    savedlist.remove(model);
    emit(removeSavedJob());
    emit(addSavedJob());
  }
    void removeall(){
    savedlist.clear();
    emit(removeSavedJob());
    emit(addSavedJob());
  }
}
