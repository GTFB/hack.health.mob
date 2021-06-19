import 'package:altrp/pages/PageExpert.dart';
import 'package:flutter/cupertino.dart';

import 'HomePage.dart';
import 'services/User.dart';
import 'auth.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = false;

    return isLoggedIn ? PageExpert() : AuthorizationPage();
  }
}