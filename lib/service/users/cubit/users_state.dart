part of 'users_cubit.dart';

@immutable
abstract class UsersState {}

class UsersEmptyState extends UsersState {}

class UsersLoadingState extends UsersState {}

class UsersLoadedState extends UsersState {
  final MessageResponse signUpResult;
  UsersLoadedState({@required this.signUpResult})
      : assert(signUpResult != null);
}

class UsersErrorState extends UsersState {}
