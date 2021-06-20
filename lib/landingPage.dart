import 'package:altrp/pages/PageExpert.dart';
import 'package:flutter/cupertino.dart';

import 'HomePage.dart';
import 'services/User.dart';
import 'auth.dart';

class LandingPage extends StatelessWidget {
  final bool isLoggedIn = false;
  const LandingPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? PageExpert() : AuthorizationPage();
  }
}