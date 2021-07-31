import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portelio/res/auth_res/strings.dart';
import 'package:portelio/res/dimensions.dart';
import 'package:portelio/res/images.dart';

class AnotherLoginFrame extends StatelessWidget {
  const AnotherLoginFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 32),
          child: TextButton(
            onPressed: () {},
            child: Text(
              AuthStrings.forgot_password,
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.underline),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(children: <Widget>[
            Expanded(
                child: Divider(
              color: Colors.white,
            )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "или",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
                child: Divider(
              color: Colors.white,
            )),
          ]),
        ),
        Container(
          margin:
              const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 64),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: CustomDimensions.icon_size,
                  width: CustomDimensions.icon_size,
                  child: SvgPicture.asset(CustomImages.google_icon)),
              Container(
                  height: CustomDimensions.icon_size,
                  width: CustomDimensions.icon_size,
                  child: SvgPicture.asset(CustomImages.facebook_icon)),
            ],
          ),
        )
      ],
    );
  }
}
