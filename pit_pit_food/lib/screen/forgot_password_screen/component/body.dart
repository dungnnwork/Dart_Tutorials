import 'package:flutter/material.dart';

import 'package:pit_pit_food/components/custom_suffix_icon.dart';
import 'package:pit_pit_food/components/default_button.dart';
import 'package:pit_pit_food/components/no_acount.dart';
import 'package:pit_pit_food/constants.dart';
import 'package:pit_pit_food/size_config.dart';

import '../../../components/form_error.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Quên mật khẩu",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Vui lòng nhập email hoặc số điện thoại của bạn / Chúng tôi sẽ gửi đường dẫn",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              const ForgotPassWordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassWordForm extends StatefulWidget {
  const ForgotPassWordForm({Key? key}) : super(key: key);

  @override
  _ForgotPassWordFormState createState() => _ForgotPassWordFormState();
}

class _ForgotPassWordFormState extends State<ForgotPassWordForm> {
  List<String> error = [];
  String? email;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) {
              email = newValue;
            },
            onChanged: (value) {
              if (value.isNotEmpty && error.contains(kEmailNullError)) {
                setState(() {
                  error.remove(kEmailNullError);
                });
              }
            },
            validator: (value) {
              if (value!.isNotEmpty && !error.contains(kEmailNullError)) {
                setState(() {
                  error.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !error.contains(kInvalidEmailError)) {
                setState(() {
                  error.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: 'Email/Số điện thoại',
              hintText: 'Nhập email / Số điện thoại của bạn',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: 'assets/icons/Mail.svg',
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: error),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          DefaultButton(
            text: "Tiếp tục",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          const NoAccount(),
        ],
      ),
    );
  }
}
