import 'package:flutter/material.dart';

import 'package:pit_pit_food/screen/forgot_password_screen/forgot_password_screen.dart';
import 'package:pit_pit_food/screen/home/home_screen.dart';

import 'package:pit_pit_food/screen/onboarding/onboarding_screen.dart';
import 'package:pit_pit_food/screen/login/login_screen.dart';

import 'package:pit_pit_food/screen/sign_up/sign_up_screen.dart';
import 'package:pit_pit_food/screen/splash/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  Onboarding.routeName: (context) => const Onboarding(),
  SplashScreen.routename: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
