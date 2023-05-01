import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gethire/Screens/CreateProfile/create_profile1.dart';
import 'package:gethire/size_config.dart';
import 'package:gethire/theme.dart';
import 'package:lottie/lottie.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({super.key});

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
    );

    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CreateProfile1()));
        controller.reset();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Positioned.fill(
          child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 40.fh,
                ),
                SvgPicture.asset(
                  'assets/svg/4rth illustrator.svg',
                  height: 300.fh,
                  width: 270.fw,
                ),
                SizedBox(
                  height: 30.fh,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.fw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AutoSizeText(" Kick start your day by getting up early.",
                          textAlign: TextAlign.center,
                          style: getFontStyle(
                              color: AppTheme.blackFontColor,
                              textType: TextType.heading,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 10.fh,
                      ),
                      AutoSizeText("Please select the option you need",
                          style: getFontStyle(
                              color: AppTheme.blackFontColor,
                              textType: TextType.smallText,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 30.fh,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDailogbox(context);
                        },
                        child: Container(
                            height: 50.fh,
                            width: 300.fw,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/logo/googlesignup.png",
                                  height: 40.fh,
                                  width: 40.fw,
                                ),
                                AutoSizeText(
                                  "Sign in with Google",
                                  style: getFontStyle(
                                      fontSize: 15.fh,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 20.fh,
                      ),
                      Container(
                          height: 50.fh,
                          width: 300.fw,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/logo/linkedin.png",
                                height: 45.fh,
                                width: 45.fw,
                              ),
                              AutoSizeText(
                                "Sign in with linkedin",
                                style: getFontStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.fh,
                                    color: Colors.black),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 20.fh,
                      ),
                      Container(
                          height: 50.fh,
                          width: 300.fw,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/logo/whatsapplogo.png",
                                height: 45.fh,
                                width: 45.fw,
                              ),
                              AutoSizeText(
                                "Sign in with Whatsapp",
                                style: getFontStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.fh,
                                    color: Colors.black),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ]),
        ),
      ])),
    );
  }

  void showDailogbox(context) => showDialog(
      context: context,
      builder: (context) => Dialog(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset(
                    'assets/lottie/correct.json',
                    repeat: false,
                    controller: controller,
                    onLoaded: (composition) {
                      controller.duration = composition.duration;
                      controller.forward();
                    },
                  ),
                  AutoSizeText("Congratulations",
                      style: getFontStyle(
                          color: AppTheme.blackFontColor,
                          textType: TextType.subHeading,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 3.fh,
                  ),
                  AutoSizeText("Your successfully signed in ",
                      style: getFontStyle(
                          color: AppTheme.blackFontColor,
                          textType: TextType.text,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 20.fh,
                  ),
                ],
              ),
            ),
          ));
}
