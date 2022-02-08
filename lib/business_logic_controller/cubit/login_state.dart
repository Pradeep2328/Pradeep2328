part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  final String userName;
  bool isLogin = false;
  LoginState({required this.userName});
  @override
  List<Object> get props => [];
}

//class LoginInitial extends LoginState {}
