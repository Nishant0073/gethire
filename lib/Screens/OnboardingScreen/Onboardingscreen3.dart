import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gethire/Screens/OptionScreen/OptionScreen.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

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
                          transitionDuration: Duration(milliseconds: 500),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  OptionScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = Offset(1.0, 0.0);
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
                            color: Color(0xFF3252BB),
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
                'assets/svg/3rd illustrator.svg',
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
                    AutoSizeText("Get Your Best Candidate",
                        style: getFontStyle(
                            color: AppTheme.blackFontColor,
                            textType: TextType.heading,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 10.fh,
                    ),
                    AutoSizeText(
                        "Get your best candidates for your company by posting jobs on our sites.",
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
                          width: 12.fw,
                          decoration: BoxDecoration(
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
                          decoration: BoxDecoration(
                            color: Color(0xFFB1B1B1),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Container(
                          height: 12.fh,
                          width: 28.fw,
                          decoration: BoxDecoration(
                            color: Color(0xFF3252BB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(200)),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 500),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        OptionScreen(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  var begin = Offset(1.0, 0.0);
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
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF3252BB),
                            ),
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
