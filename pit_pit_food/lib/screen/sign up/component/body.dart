import 'package:flutter/material.dart';
import 'package:pit_pit_food/components/heading_title.dart';
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
          HeadingTitle(
            labelText: 'Đăng kí',
            titleText: 'Chào mừng bạn tham gia',
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenWidth(20),
                ),
                child: SvgPicture.asset(
                  'assets/icons/navigate_before_24px.svg',
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              const SelectLogin(),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              const SignForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
            ],
          )
        ],
      ),
    );
  }
}
