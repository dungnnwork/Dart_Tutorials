import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/onboarding/onboarding_screen.dart';
import 'package:pit_pit_food/screen/login/login_screen.dart';
import 'package:pit_pit_food/screen/sign%20up/component/sign_up%20screen.dart';
import 'package:pit_pit_food/screen/splash/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  Onboarding.routeName: (context) => const Onboarding(),
  SplashScreen.routename: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
};
