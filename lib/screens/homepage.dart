import 'package:flutter/material.dart';
import 'package:pmsna1/screens/login_screen.dart';
import 'package:pmsna1/screens/login_screen_desk.dart';
import 'package:pmsna1/screens/login_screen_tablet.dart';

import '../responsive/responsive_layout.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: LoginScreen(),
        desktopBody: LoginScreenDesk(),
        tabletBody: LoginScreenTablet(),
      ),
    );
  }
}