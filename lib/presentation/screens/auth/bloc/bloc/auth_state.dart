part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSignupState extends AuthState {}

class AuthLoginState extends AuthState {}
