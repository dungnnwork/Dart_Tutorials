import 'package:flutter/material.dart';
import 'package:pit_pit_food/components/custom_suffix_icon.dart';

import 'package:pit_pit_food/components/default_button.dart';
import 'package:pit_pit_food/components/form_error.dart';
import 'package:pit_pit_food/screen/forgot_password_screen/forgot_password_screen.dart';
import 'package:pit_pit_food/screen/home/home_screen.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String> errorsEmails = [];
  final List<String> errorPasswords = [];
  final List<Color> color = [
    Colors.white,
    Colors.white,
  ];
  bool? remember = false;

  get kTitleTextColor => null;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Email/Số điện thoại',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(15)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            FormErrorEmails(errorsEmails: errorsEmails),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Text(
              'Mật khẩu',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(15),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            FormErrorPasswords(errorPasswords: errorPasswords),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: remember,
                  activeColor: kTitleTextColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                const Text('Nhớ đăng nhập'),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Navigator to
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Quên mật khẩu?',
                    style: TextStyle(
                      color: Color(0XFF4F4F4F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: DefaultButton(
                text: 'Đăng nhập',
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('After save email: $email, password: $password');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildEmailFormField() {
    return Container(
      decoration: BoxDecoration(
        color: color[0],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errorsEmails.contains(kEmailNullError)) {
            setState(() {
              errorsEmails.remove(kEmailNullError);
              color[0] = Colors.white;
            });
          } else if (emailValidatorRegExp.hasMatch(value) &&
              errorsEmails.contains(kInvalidEmailError)) {
            setState(
              () {
                errorsEmails.remove(kInvalidEmailError);
                color[0] = Colors.white;
              },
            );
          }
        },
        validator: (value) {
          if (value!.isEmpty && !errorsEmails.contains(kEmailNullError)) {
            setState(() {
              errorsEmails.add(kEmailNullError);
              color[0] = const Color(0XFFF9CECE);
            });
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errorsEmails.contains(kInvalidEmailError)) {
            setState(() {
              errorsEmails.add(kInvalidEmailError);
              color[0] = const Color(0XFFF9CECE);
            });
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: 'Email/Số điện thoại',
          enabledBorder: outLineInputEmailBorder(),
          focusedBorder: outLineInputEmailBorder(),
          border: outLineInputEmailBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputEmailBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color[0],
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }

  Container buildPasswordFormField() {
    return Container(
      decoration: BoxDecoration(
        color: color[1],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        obscureText: true,
        onSaved: (newValue) {
          password = newValue;
        },
        onChanged: (value) {
          if (value.isNotEmpty && errorPasswords.contains(kPassNullError)) {
            setState(() {
              errorPasswords.remove(kPassNullError);
              color[1] = Colors.white;
            });
          } else if (value.length >= 8 &&
              errorPasswords.contains(kShortPassError)) {
            setState(() {
              errorPasswords.remove(kShortPassError);
              color[1] = Colors.white;
            });
          }
        },
        validator: (value) {
          if (value!.isEmpty && !errorPasswords.contains(kPassNullError)) {
            setState(() {
              errorPasswords.add(kPassNullError);
              color[1] = const Color(0XFFF9CECE);
            });
          } else if (value.length < 8 &&
              !errorPasswords.contains(kShortPassError)) {
            setState(() {
              errorPasswords.add(kShortPassError);
              color[1] = const Color(0XFFF9CECE);
            });
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: 'Mật khẩu',
          enabledBorder: outLineInputPasswordBorder(),
          focusedBorder: outLineInputPasswordBorder(),
          border: outLineInputPasswordBorder(),
          suffixIcon: const CustomSuffixIcon(
            svgIcon: 'assets/icons/visibility_24px.svg',
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputPasswordBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color[1],
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
