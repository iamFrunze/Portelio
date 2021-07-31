import 'package:flutter/material.dart';
import 'package:portelio/res/auth_res/strings.dart';

class SignupFrame extends StatefulWidget {
  @override
  _SignupFrameState createState() => _SignupFrameState();
}

class _SignupFrameState extends State<SignupFrame> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 300,
      decoration: BoxDecoration(color: Colors.white10),
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 32),
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                _textFormField(
                    AuthStrings.name,
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    false),
                _textFormField(
                    AuthStrings.email,
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    false),
                _textFormField(
                    AuthStrings.password,
                    Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                    true),
                _textFormField(
                    AuthStrings.cofirmation_password,
                    Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                    true)
              ],
            ),
            Positioned(
                bottom: -25,
                child: Container(
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: Text(
                        AuthStrings.label_sign_up,
                        style: TextStyle(color: Colors.black),
                      )),
                ))
          ]),
    );
  }

  Widget _textFormField(String text, Widget icon, bool obscure) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.cyan,
        obscureText: obscure,
        decoration: InputDecoration(
            icon: icon,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            labelText: text,
            hintStyle: TextStyle(color: Colors.white),
            labelStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
