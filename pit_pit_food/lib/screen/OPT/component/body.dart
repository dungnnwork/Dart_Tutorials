import 'package:flutter/material.dart';
import 'package:pit_pit_food/constants.dart';
import 'package:pit_pit_food/screen/OPT/component/opt_form.dart';
import 'package:pit_pit_food/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                'OPT Verification',
                style: TextStyle(
                  backgroundColor: Colors.black,
                ),
              ),
              const Text(
                'We sent your code to +1 898 860 ***',
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              const OPTForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  //resend your opt
                },
                child: const Text(
                  'Resend OPT Code',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will experid in'),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (context, double value, child) => Text(
            value >= 10 ? "00:${value.toInt()}" : "00:0${value.toInt()}",
            style: const TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
