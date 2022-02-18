import 'package:flutter/material.dart';
import 'package:pit_pit_food/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kErrorTextColor = Color(0xFFF9CECE);
const kTitleTextColor = Color(0xFF828282);
const kAnimationDuration = Duration(milliseconds: 200);
const kTextColor = Colors.red;

Duration duration = const Duration(seconds: 3);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Vui lòng nhập email hoặc số điện thoại";
const String kInvalidEmailError = "Email sai định dạng , vui lòng nhập lại";
const String kPassNullError = "Vui lòng nhập mật khẩu của bạn";
const String kComFormPassNullError = "Xác thực lại mật khẩu";
const String kShortPassError = "Mật khẩu quá ngắn";
const String kMatchPassError = "Mật khẩu xác thực không đúng";
const String kAddressNullError = "Nhập email của bạn";
const String kNameNullError = "Điền tên của bạn";
const String kPhoneNumberNullError = "Điền số điện thoại của ban";
final optInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kTextColor),
  );
}
