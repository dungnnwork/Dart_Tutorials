import 'package:flutter/material.dart';

import 'package:pit_pit_food/components/custom_suffix_icon.dart';
import 'package:pit_pit_food/components/default_button.dart';
import 'package:pit_pit_food/components/form_error.dart';

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
  String? comformPassword;
  final List<String> errorsEmails = [];
  final List<String> errorPasswords = [];
  final List<String> errorComformPasswords = [];
  final List<Color> color = [Colors.white, Colors.white, Colors.white];
  bool? remember = false;

  get kTitleTextColor => null;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Email/Số điện thoại',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(15),
              ),
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
              height: getProportionateScreenHeight(10),
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
            buildComformPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            FormErrorComformPassword(
                errorsComformPassword: errorComformPasswords),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: remember,
                  activeColor: kTitleTextColor,
                  onChanged: (value) {
                    setState(
                      () {
                        remember = value;
                      },
                    );
                  },
                ),
                const Text('Tôi đồng ý với điều khoản'),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            DefaultButton(
              text: 'Tiếp tục',
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  print(
                      'After save email: $email, password: $password, comform password: $comformPassword}');
                }
              },
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

  Container buildComformPasswordFormField() {
    return Container(
      decoration: BoxDecoration(
        color: color[2],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        obscureText: true,
        onSaved: (newValue) => comformPassword = newValue,
        onChanged: (value) {
          if (value.isNotEmpty &&
              errorComformPasswords.contains(kComformPassNullError)) {
            setState(() {
              errorComformPasswords.remove(kComformPassNullError);
              color[2] = Colors.white;
            });
          } else if (password == value &&
              errorComformPasswords.contains(kMatchPassError)) {
            setState(() {
              errorComformPasswords.remove(kMatchPassError);
              color[2] = Colors.white;
            });
          }
        },
        validator: (value) {
          if (value!.isEmpty &&
              !errorComformPasswords.contains(kComformPassNullError)) {
            setState(() {
              errorComformPasswords.add(kComformPassNullError);
              color[2] = const Color(0XFFF9CECE);
            });
          } else if (password != value &&
              !errorComformPasswords.contains(kMatchPassError)) {
            setState(() {
              errorComformPasswords.add(kMatchPassError);
              color[2] = const Color(0XFFF9CECE);
            });
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: 'Nhập lại mật khẩu',
          enabledBorder: outLineInputComformPasswordBorder(),
          focusedBorder: outLineInputComformPasswordBorder(),
          border: outLineInputComformPasswordBorder(),
          suffixIcon: const CustomSuffixIcon(
            svgIcon: 'assets/icons/visibility_24px.svg',
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputComformPasswordBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color[2],
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
