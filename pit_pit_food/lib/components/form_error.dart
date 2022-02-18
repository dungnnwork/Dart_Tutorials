import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class FormErrorPasswords extends StatelessWidget {
  const FormErrorPasswords({
    Key? key,
    required this.errorPasswords,
  }) : super(key: key);

  final List<String> errorPasswords;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        errorPasswords.length,
        (index) => Text(
          errorPasswords[index],
          style: const TextStyle(
            color: Color(0XFFEB5757),
          ),
        ),
      ),
    );
  }
}

class FormErrorEmails extends StatelessWidget {
  const FormErrorEmails({
    Key? key,
    required this.errorsEmails,
  }) : super(key: key);

  final List<String> errorsEmails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        errorsEmails.length,
        (index) => Text(
          errorsEmails[index],
          style: const TextStyle(color: Color(0XFFEB5757)),
        ),
      ),
    );
  }
}

class FormErrorComformPassword extends StatelessWidget {
  const FormErrorComformPassword({
    Key? key,
    required this.errorsComformPassword,
  }) : super(key: key);

  final List<String> errorsComformPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        errorsComformPassword.length,
        (index) => Text(
          errorsComformPassword[index],
          style: const TextStyle(color: Color(0XFFEB5757)),
        ),
      ),
    );
  }
}

class FormError extends StatelessWidget {
  const FormError({Key? key, required this.errors}) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String error = ''}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(14),
        ),
        Text(error),
      ],
    );
  }
}
