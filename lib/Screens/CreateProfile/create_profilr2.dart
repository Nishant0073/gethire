import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/CreateProfile/CreateprofileWidget/text_field_receut.dart';
import 'package:gethire/Screens/CreateProfile/invite_team.dart';
import 'package:gethire/size_config.dart';
import 'package:gethire/theme.dart';

class CreateProfile2 extends StatefulWidget {
  const CreateProfile2({super.key});

  @override
  State<CreateProfile2> createState() => _CreateProfile2State();
}

class _CreateProfile2State extends State<CreateProfile2> {
  final TextEditingController _emailidController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.fw),
            child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 25.fh,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25.fh,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      AutoSizeText("Company Profile",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.fh,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                  Container(
                    height: 85.fh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFE9E9E9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 30.fh,
                              backgroundColor: const Color(0xFFC4C4C4),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 40.fw,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 20.fh,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Company Name",
                                style: getFontStyle(
                                    color: AppTheme.blackFontColor,
                                    textType: TextType.smallText,
                                    fontWeight: FontWeight.w600)),
                            Container(
                                width: 235.fw,
                                height: 40.fh,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF),
                                ),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 15),
                                    border: InputBorder.none,
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                  Container(
                    height: 900.fh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFE9E9E9),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: " Email ID",
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: " Contact Number",
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: " Complete Address",
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: " Add Social Media Links",
                            hint: "Linkedin",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: " Website",
                            hint: "",
                          ),
                          const NormalDropDown(
                            // controller: _emailidController,
                            name: "Type of Company",
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: ' CIN Number',
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: ' GST Number',
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: ' About',
                            hint: "",
                          ),
                          const NormalDropDown(
                            name: 'Number of employees',
                            hint: "",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.fh,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.fw),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Timer.periodic(const Duration(seconds: 1), (timer) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateProfile3()));
                              timer.cancel();
                            });
                            showDailogbox(context);
                          },
                          child: AutoSizeText("Next",
                              style: getFontStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.fh,
                                color: const Color(0xFF3252BB),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.fh,
                  ),
                ]),
          ),
        ),
      ])),
    );
  }

  void showDailogbox(context) => showDialog(
      context: context,
      builder: (context) => Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 204.fh,
              width: 348.fw,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200))),
              child: Container(
                height: 204.fh,
                width: 348.fw,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 30.fh,
                      backgroundColor: const Color(0xFF3252BB),
                      child: Icon(
                        Icons.check,
                        size: 30.fh,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.fh,
                    ),
                    AutoSizeText("Profile Completed",
                        style: getFontStyle(
                            color: AppTheme.blackFontColor,
                            fontSize: 20.fh,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ));
}
