import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'recent_jopmanage_state.dart';

class RecentJopmanageCubit extends Cubit<RecentJopmanageState> {
  RecentJopmanageCubit() : super(RecentJopmanageInitial());

  int currentindex=0;
  void changetype({required int index}){
    currentindex=index;
    emit(chnage());
    emit(chnage2());
  }
}
