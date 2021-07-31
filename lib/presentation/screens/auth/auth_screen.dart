import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portelio/presentation/screens/auth/commons/another_login.dart';
import 'package:portelio/presentation/screens/auth/commons/signup_frame.dart';
import 'package:portelio/res/auth_res/colors.dart';
import 'package:portelio/res/dimensions.dart';
import 'package:portelio/res/images.dart';
import 'package:portelio/res/auth_res/strings.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'bloc/auth_bloc.dart';
import 'commons/custom_toggle.dart';
import 'commons/loign_frame.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthBloc _bloc = AuthBloc();

  @override
  void initState() {
    super.initState();
    _bloc.add(AuthToggleButton(toggle: ToggleButtonEvents.signin));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocConsumer(
          bloc: _bloc,
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.black,
              body: SingleChildScrollView(
                child: Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 300, child: Image.asset(CustomImages.logo)),
                        CustomToggle(),
                        BlocBuilder(
                            bloc: _bloc,
                            builder: (context, state) {
                              if (state is AuthSigninState) {
                                return Column(
                                  children: [
                                    LoginFrame(),
                                    AnotherLoginFrame()
                                  ],
                                );
                              } else
                                return SignupFrame();
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
