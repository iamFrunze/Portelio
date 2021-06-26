import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portelio/presentation/screens/auth/bloc/bloc/auth_bloc.dart';
import 'package:portelio/presentation/screens/auth/commons/signup_frame.dart';
import 'package:portelio/res/auth_res/colors.dart';
import 'package:portelio/res/dimensions.dart';
import 'package:portelio/res/images.dart';
import 'package:portelio/res/auth_res/strings.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
    _bloc.add(AuthLoginEvent());
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
                              if (state is AuthLoginState) {
                                return Column(
                                  children: [
                                    LoginFrame(),
                                    Container(
                                      margin: const EdgeInsets.only(top: 32),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          AuthStrings.forgot_password,
                                          style: TextStyle(
                                              color: Colors.white,
                                              decoration:
                                                  TextDecoration.underline),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(children: <Widget>[
                                        Expanded(
                                            child: Divider(
                                          color: Colors.white,
                                        )),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Text(
                                            "или",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Expanded(
                                            child: Divider(
                                          color: Colors.white,
                                        )),
                                      ]),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 16,
                                          left: 16,
                                          right: 16,
                                          bottom: 64),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                              height:
                                                  CustomDimensions.icon_size,
                                              width: CustomDimensions.icon_size,
                                              child: SvgPicture.asset(
                                                  CustomImages.google_icon)),
                                          Container(
                                              height:
                                                  CustomDimensions.icon_size,
                                              width: CustomDimensions.icon_size,
                                              child: SvgPicture.asset(
                                                  CustomImages.facebook_icon)),
                                        ],
                                      ),
                                    )
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
