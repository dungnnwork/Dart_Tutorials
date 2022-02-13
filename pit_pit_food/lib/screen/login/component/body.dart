import 'package:flutter/material.dart';
import 'package:pit_pit_food/components/heading_title.dart';
import 'package:pit_pit_food/components/no_acount.dart';
import 'package:pit_pit_food/components/select_login.dart';
import 'package:pit_pit_food/screen/login/component/widget/sign_form.dart';
import 'package:pit_pit_food/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const HeadingTitle(
            labelText: 'Đăng nhập',
            titleText: 'Truy cập tài khoản',
            child: SizedBox(),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              const SelectLogin(),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              const SignForm(),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              const NoAccount(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
