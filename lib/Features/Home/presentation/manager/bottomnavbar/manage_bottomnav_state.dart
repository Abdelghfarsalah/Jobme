part of 'manage_bottomnav_cubit.dart';

@immutable
sealed class ManageBottomnavState {}

final class ManageBottomnavInitial extends ManageBottomnavState {}
final class change extends ManageBottomnavState {}
