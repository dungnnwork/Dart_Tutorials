import 'package:flutter/material.dart';
import 'package:pit_pit_food/components/default_button.dart';
import 'package:pit_pit_food/constants.dart';
import 'package:pit_pit_food/size_config.dart';

class OPTForm extends StatefulWidget {
  const OPTForm({Key? key}) : super(key: key);

  @override
  _OPTFormState createState() => _OPTFormState();
}

class _OPTFormState extends State<OPTForm> {
  FocusNode? pin2ForcusNode;
  FocusNode? pin3ForcusNode;
  FocusNode? pin4ForcusNode;

  @override
  void initState() {
    super.initState();
    pin2ForcusNode = FocusNode();
    pin3ForcusNode = FocusNode();
    pin4ForcusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2ForcusNode!.dispose();
    pin3ForcusNode!.dispose();
    pin4ForcusNode!.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: optInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2ForcusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2ForcusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: optInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3ForcusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3ForcusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: optInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4ForcusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4ForcusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: optInputDecoration,
                  onChanged: (value) {
                    pin4ForcusNode!.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          DefaultButton(
            text: 'Continue',
            press: () {},
          )
        ],
      ),
    );
  }
}
