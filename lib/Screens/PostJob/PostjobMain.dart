import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/homeScreen/homeScreem.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';
import 'package:gethire/widgets/DeopdownButton.dart';
import 'package:gethire/widgets/textField.dart';

class PostJobMian extends StatefulWidget {
  const PostJobMian({super.key});

  @override
  State<PostJobMian> createState() => _PostJobMianState();
}

class _PostJobMianState extends State<PostJobMian> {
  TextEditingController _jobTitle = TextEditingController();
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
                      AutoSizeText(" Post Job",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.fh,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                  Container(
                    height: 700.fh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE9E9E9),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          DeopdownButton(
                            name: "Job Title",
                            hint: "",
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.fw),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DeopdownButton2(
                                  name: "Employment Type",
                                  hint: "",
                                ),
                                DeopdownButton2(
                                  name: "Job Type",
                                  hint: "",
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.fw),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DeopdownButton2(
                                  name: "Experience Required",
                                  hint: "",
                                ),
                                DeopdownButton2(
                                  name: "Work Location",
                                  hint: "",
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.fw),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DeopdownButton2(
                                  name: "Salary Offered",
                                  hint: "",
                                ),
                                DeopdownButton2(
                                  name: "Mode of Payment",
                                  hint: "",
                                ),
                              ],
                            ),
                          ),
                          TextFieldcustom(
                            controller: _jobTitle,
                            name: " Write Job Decription",
                            hint: "",
                          ),
                          DeopdownButton(
                            name: "Tag Required Skills",
                            hint: "",
                          ),
                          DeopdownButton(
                            name: "Other Benefits",
                            hint: "",
                          ),
                          DeopdownButton(
                            name: "Expected Joining ",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => CreateProfile2()));
                          },
                          child: AutoSizeText("  Save",
                              style: getFontStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.5.fh,
                                color: Color(0xFF3252BB),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => CreateProfile2()));
                          },
                          child: AutoSizeText("Preview",
                              style: getFontStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.fh,
                                color: Color(0xFF3252BB),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            Timer.periodic(Duration(seconds: 1), (timer) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                              timer.cancel();
                            });
                            showDailogbox(context);
                          },
                          child: AutoSizeText("Post Job ",
                              style: getFontStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.fh,
                                color: Color(0xFF3252BB),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.fh,
                  ),
                ]),
          ),
        ),
      ])),
    );
  }
}

void showDailogbox(context) => showDialog(
    context: context,
    builder: (context) => Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: 230.fh,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(200))),
            child: Container(
              height: 230.fh,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200))),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.fw, vertical: 20.fh),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 30.fh,
                      backgroundColor: Color(0xFF3252BB),
                      child: Icon(
                        Icons.check,
                        size: 30.fh,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.fh,
                    ),
                    AutoSizeText("Job Submitted",
                        style: getFontStyle(
                            color: AppTheme.blackFontColor,
                            fontSize: 20.fh,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 10.fh,
                    ),
                    AutoSizeText("Your Job Post is Under Review",
                        textAlign: TextAlign.center,
                        style: getFontStyle(
                            color: AppTheme.blackFontColor,
                            fontSize: 16.fh,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 10.fh,
                    ),
                    AutoSizeText(
                        "We will get back to you within working 4-5 hours",
                        textAlign: TextAlign.center,
                        style: getFontStyle(
                            color: Color(0xFFB1B1B1),
                            fontSize: 10.fh,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
        ));

class DeopdownButton2 extends StatefulWidget {
  final String name;
  final String hint;
  const DeopdownButton2({super.key, required this.name, required this.hint});

  @override
  State<DeopdownButton2> createState() => _DeopdownButton2State();
}

class _DeopdownButton2State extends State<DeopdownButton2> {
  String dropdownValue = '1 year';
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10.fh),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name,
                style: getFontStyle(
                    color: AppTheme.blackFontColor,
                    fontSize: 12.5.fh,
                    fontWeight: FontWeight.w800)),
            SizedBox(
              height: 8.fh,
            ),
            Container(
              height: 40.fh,
              width: 135.fw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
              ),
              child: DropdownButton<String>(
                underline: SizedBox(),
                style: TextStyle(
                    color: AppTheme.blackFontColor,
                    fontSize: 15.fw,
                    fontWeight: FontWeight.w400),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['1 year', '2 year', '3 year', '4 year']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.fw),
                      child: Row(
                        children: [
                          Text(value),
                          // Row(
                          //   children: [
                          //     Spacer(),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}
