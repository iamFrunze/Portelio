part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

enum ToggleButtonEvents{
  signin,
  signup
}

class AuthToggleButton extends AuthEvent{
    var toggle = ToggleButtonEvents.signin;
    AuthToggleButton({required this.toggle});
}
