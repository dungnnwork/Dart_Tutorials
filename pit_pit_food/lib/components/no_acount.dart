import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Bạn chưa có tài khoản?'),
        SizedBox(
          width: getProportionateScreenWidth(3),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: const Text(
            'Đăng kí',
            style: TextStyle(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
