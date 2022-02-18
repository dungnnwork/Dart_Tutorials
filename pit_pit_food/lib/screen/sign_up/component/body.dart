import 'package:flutter/material.dart';

import 'package:pit_pit_food/components/socal_cart.dart';
import 'package:pit_pit_food/screen/sign_up/sign_up_screen.dart';
import 'package:pit_pit_food/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                'Register Account',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              const SignUpScreen(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocalCart(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocalCart(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocalCart(
                    icon: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              const Text(
                'By continuing your comfirm that you agree \nwith our Team and Condition',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
