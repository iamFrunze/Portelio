import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portelio/presentation/screens/auth/bloc/bloc/auth_bloc.dart';
import 'package:portelio/res/auth_res/strings.dart';

class CustomToggle extends StatefulWidget {
  @override
  _CustomToggleState createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  bool active = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocProvider.of<AuthBloc>(context),
      child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          active = true;
                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthLoginEvent());
                        });
                      },
                      child:
                          _toggleButton(active, AuthStrings.label_login, 0))),
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          active = false;
                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthSignupEvent());
                        });
                      },
                      child: _toggleButton(
                          !active, AuthStrings.label_sign_up, 1))),
            ],
          )),
    );
  }
}

Widget _toggleButton(bool active, String text, int position) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: active ? Colors.white : null,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Center(
        child: Text(
      text,
      style: active
          ? TextStyle(color: Colors.black)
          : TextStyle(color: Colors.white),
    )),
  );
}
