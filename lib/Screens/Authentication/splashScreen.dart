import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gethire/Screens/OnboardingScreen/Onboardingscreen1.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingScreen1()));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3252BB),
              Color(0xFF8F6CEA),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.fw),
                child: Container(
                  height: 100.fh,
                  width: 280.fh,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/logo/Gethire.png',
                          ))),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.fw),
                child: AutoSizeText(
                  " Top job portal for getting in touch with the best recruiters and employers.",
                  style: getFontStyle(
                    fontSize: 13.fh,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
