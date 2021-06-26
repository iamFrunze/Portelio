part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthSignupEvent extends AuthEvent {}

class AuthLoginEvent extends AuthEvent {}
