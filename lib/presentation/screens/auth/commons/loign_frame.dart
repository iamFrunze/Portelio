import 'package:flutter/material.dart';
import 'package:portelio/res/auth_res/strings.dart';

class LoginFrame extends StatefulWidget {
  @override
  _LoginFrameState createState() => _LoginFrameState();
}

class _LoginFrameState extends State<LoginFrame> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 160,
      decoration: BoxDecoration(color: Colors.white10),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
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
                        AuthStrings.label_login,
                        style: TextStyle(color: Colors.black),
                      )),
                ))
          ]),
    );
  }

  Widget _textFormField(String text, Widget icon, bool obscure) {
    return Container(
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
