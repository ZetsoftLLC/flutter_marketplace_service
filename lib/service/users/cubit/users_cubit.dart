import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/login_request.dart';
import 'package:flutter_marketplace_service/models/login_response.dart';
import 'package:flutter_marketplace_service/models/message_response.dart';
import 'package:flutter_marketplace_service/models/signup_request.dart';
import 'package:flutter_marketplace_service/service/users/users_repository.dart';
import 'package:meta/meta.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  final UsersRepository repository;

  UsersCubit(this.repository) : super(UsersEmptyState());

  Future<void> signup(SignupRequest param) async {
    try {
      emit(UsersEmptyState());

      final MessageResponse mes = await repository.signup(param);

      emit(UsersSignupLoadedState(signUpResult: mes));
    } catch (_) {
      emit(UsersErrorState());
    }
  }

  Future<void> login(LoginRequest param) async {
    try {
      emit(UsersEmptyState());

      final LoginResponse mes = await repository.login(param);

      emit(UsersLoginLoadedState(res: mes));
    } catch (_) {
      emit(UsersErrorState());
    }
  }

  Future<void> logout() async {
    try {
      emit(UsersEmptyState());

      final _ = await repository.logout();

      emit(UsersLogoutLoadedState());
    } catch (_) {
      emit(UsersErrorState());
    }
  }
}
