part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSignupState extends AuthState{}

class AuthSigninState extends AuthState{}

class AuthErrorState extends AuthState{}

class AuthSigninGoogleState extends AuthState{}

class AuthSignFacebookState extends AuthState{}
