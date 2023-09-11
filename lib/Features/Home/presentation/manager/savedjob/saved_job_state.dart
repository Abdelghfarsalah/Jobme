part of 'saved_job_cubit.dart';

@immutable
sealed class SavedJobState {}

final class SavedJobInitial extends SavedJobState {}
final class addSavedJob extends SavedJobState {}
final class removeSavedJob extends SavedJobState {}
