import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gethire/Screens/OnboardingScreen/on_boarding_screen2.dart';
import 'package:gethire/Screens/OptionScreen/option_screen.dart';
import 'package:gethire/size_config.dart';
import 'package:gethire/theme.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const OptionScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(1.0, 0.0);
                            var end = Offset.zero;
                            var tween = Tween(begin: begin, end: end);
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: AutoSizeText("Skip",
                        style: getFontStyle(
                            color: const Color(0xFF3252BB),
                            textType: TextType.text,
                            fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    width: 20.fw,
                  ),
                ],
              ),
              SizedBox(
                height: 50.fh,
              ),
              SvgPicture.asset(
                'assets/svg/Group828.svg',
                height: 314.fh,
                width: 290.fw,
              ),
              SizedBox(
                height: 50.fh,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.fw),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText("Join Our Team",
                        style: getFontStyle(
                            color: AppTheme.blackFontColor,
                            textType: TextType.heading,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 10.fh,
                    ),
                    AutoSizeText(
                        "We are ready to help you reach your goals, join our team and let’s get started!",
                        style: getFontStyle(
                            color: AppTheme.blackFontColor,
                            textType: TextType.smallText,
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 70.fh,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10.fw,
                        ),
                        Container(
                          height: 12.fh,
                          width: 28.fw,
                          decoration: const BoxDecoration(
                            color: Color(0xFF3252BB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(200)),
                          ),
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Container(
                          height: 12.fh,
                          width: 12.fw,
                          decoration: const BoxDecoration(
                            color: Color(0xFFB1B1B1),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Container(
                          height: 12.fh,
                          width: 12.fw,
                          decoration: const BoxDecoration(
                            color: Color(0xFFB1B1B1),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 500),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const OnboardingScreen2(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  var begin = const Offset(1.0, 0.0);
                                  var end = Offset.zero;
                                  var tween = Tween(begin: begin, end: end);
                                  var offsetAnimation = animation.drive(tween);

                                  return SlideTransition(
                                    position: offsetAnimation,
                                    child: child,
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 36.fh,
                            width: 110.fw,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF3252BB),
                            ),
                            child: GestureDetector(
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: getFontStyle(
                                      color: Colors.white,
                                      textType: TextType.text,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.fw,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
