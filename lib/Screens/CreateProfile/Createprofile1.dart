import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:gethire/Screens/CreateProfile/Createprofilr2.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

import 'CreateprofileWidget/textFieldReceut.dart';

class CreateProfile1 extends StatefulWidget {
  const CreateProfile1({super.key});

  @override
  State<CreateProfile1> createState() => _CreateProfile1State();
}

class _CreateProfile1State extends State<CreateProfile1> {
  TextEditingController _emailidController = TextEditingController();
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
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      AutoSizeText("Recruiter Profile",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.fh,
                            color: Color.fromARGB(255, 0, 0, 0),
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
                      color: Color(0xFFE9E9E9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 30.fh,
                              backgroundColor: Color(0xFFC4C4C4),
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
                            Text("Recruiter Name",
                                style: getFontStyle(
                                    color: AppTheme.blackFontColor,
                                    textType: TextType.smallText,
                                    fontWeight: FontWeight.w600)),
                            Container(
                                width: 235.fw,
                                height: 40.fh,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: TextFormField(
                                  
                                  decoration: InputDecoration(
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
                    height: 630.fh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE9E9E9),
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
                            name: " Mobile Number",
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: " Date of Birth",
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: " Add Social Media Links",
                            hint: "Linkedin",
                          ),
                          NormalDropDown(
                            name: 'Total Work Experience',
                            hint: "",
                          ),
                          NormalDropDown(
                            name: 'Roles You Hire For',
                            hint: "",
                          ),
                          TextFieldRrecrut(
                            controller: _emailidController,
                            name: "Short Introduction About Yourself",
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateProfile2()));
                          },
                          child: AutoSizeText("Next",
                              style: getFontStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.fh,
                                color: Color(0xFF3252BB),
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
}
