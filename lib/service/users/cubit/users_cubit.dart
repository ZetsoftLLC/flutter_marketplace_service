import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/message_response.dart';
import 'package:meta/meta.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersEmptyState());
}
