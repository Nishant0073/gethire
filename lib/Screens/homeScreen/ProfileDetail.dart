import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
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
                      AutoSizeText("Candidate Profile",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.fh,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 15.fh,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50.fh,
                            backgroundImage:
                                AssetImage("assets/images/sample.png"),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20.fw,
                          ),
                          AutoSizeText("Profile ID:121212",
                              style: getFontStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.fh,
                                color: AppTheme.primaryColor,
                              )),
                          SizedBox(
                            height: 5.fh,
                          ),
                          AutoSizeText("UI/UX Designer",
                              style: getFontStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 15.fh,
                                color: AppTheme.blackFontColor,
                              )),
                          SizedBox(
                            height: 5.fh,
                          ),
                          AutoSizeText("Name: John Deo",
                              style: getFontStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.fh,
                                color: AppTheme.blackFontColor,
                              )),
                          SizedBox(
                            height: 5.fh,
                          ),
                          AutoSizeText("Location: Chennai",
                              style: getFontStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.fh,
                                color: AppTheme.blackFontColor,
                              )),
                          SizedBox(
                            height: 5.fh,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.fh,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText("About:",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.fh,
                            color: AppTheme.blackFontColor,
                          )),
                      SizedBox(
                        height: 10.fh,
                      ),
                      AutoSizeText(
                          "While I am working on a UX design, I always try to put myself in place of the users so I can understand how they will interact with the application and what features they will consider to be beneficial. However, I recognize I have a single perspective.",
                          style: getFontStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 9.fh,
                            color: AppTheme.blackFontColor,
                          )),
                      SizedBox(
                        height: 15.fh,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText("Video Profile:",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.fh,
                            color: AppTheme.blackFontColor,
                          )),
                      SizedBox(
                        height: 10.fh,
                      ),
                      Container(
                        height: 90.fh,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.fw),
                          border: Border.all(
                            color: Color(0xFFB1B1B1),
                          ),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 55.fh,
                                width: 100.fw,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.fw),
                                    border: Border.all(
                                      color: Color(0xFFB1B1B1),
                                    ),
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Container(
                                width: 200.fw,
                                child: AutoSizeText(
                                    "Watch video of candidate for your better reach!!",
                                    style: getFontStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.fh,
                                      color: AppTheme.blackFontColor,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.fh,
                  ),
                  ProfileWidgwet(
                      head: "Education Details:",
                      dis:
                          "While I am working on a UX design, I always try to put myself in place of the users so I can understand how they will interact with the application and what features they will consider to be beneficial. However, I recognize I have a single perspective."),
                  SizedBox(
                    height: 15.fh,
                  ),
                  ProfileWidgwet(
                      head: "Other Details:",
                      dis:
                          "While I am working on a UX design, I always try to put myself in place of the users so I can understand how they will interact with the application and what features they will consider to be beneficial. However, I recognize I have a single perspective."),
                  SizedBox(
                    height: 15.fh,
                  ),
                  ProfileWidgwet(
                      head: "Work Experience:",
                      dis:
                          "While I am working on a UX design, I always try to put myself in place of the users so I can understand how they will interact with the application and what features they will consider to be beneficial. However, I recognize I have a single perspective."),
                  SizedBox(
                    height: 15.fh,
                  ),
                  ProfileWidgwet(
                      head: "Skills:",
                      dis:
                          "While I am working on a UX design, I always try to put myself in place of the users so I can understand how they will interact with the application and what features they will consider to be beneficial. However, I recognize I have a single perspective."),
                  SizedBox(
                    height: 15.fh,
                  ),
                  ProfileWidgwet(
                      head: "Expectations Details:",
                      dis:
                          "While I am working on a UX design, I always try to put myself in place of the users so I can understand how they will interact with the application and what features they will consider to be beneficial. However, I recognize I have a single perspective."),
                  SizedBox(
                    height: 25.fh,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DownloadBurtton(),
                      ShareBurtton(),
                    ],
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText("Add Notes:",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.fh,
                            color: AppTheme.blackFontColor,
                          )),
                      SizedBox(
                        height: 5.fh,
                      ),
                      AutoSizeText(
                          "Write here something that can improve the candidate ",
                          style: getFontStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 8.fh,
                            color: Color(0xFFB1B1B1),
                          )),
                      SizedBox(
                        height: 5.fh,
                      ),
                      Container(
                        height: 90.fh,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.fw),
                          border: Border.all(
                            color: Color(0xFFB1B1B1),
                          ),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Write here",
                                  hintStyle: getFontStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.fh,
                                    color: AppTheme.blackFontColor,
                                  ),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 30.fh,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.fw),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color(0xFF3252BB)),
                          height: 44.fh,
                          child: Center(
                              child: AutoSizeText(
                            "Start Chat Now",
                            style: getFontStyle(
                                fontSize: 16.fh, fontWeight: FontWeight.w700),
                          )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                ]),
          ),
        ),
      ])),
    );
  }

  Container DownloadBurtton() {
    return Container(
        width: 140.fw,
        height: 40.fh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.fw),
          border: Border.all(
            color: Color(0xFFB1B1B1),
          ),
          color: Colors.transparent,
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.download_rounded,
              color: AppTheme.blackFontColor,
            ),
            SizedBox(
              width: 5.fw,
            ),
            AutoSizeText("Download CV",
                style: getFontStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 10.fh,
                  color: AppTheme.blackFontColor,
                ))
          ],
        )));
  }

  Container ShareBurtton() {
    return Container(
        width: 140.fw,
        height: 40.fh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.fw),
          border: Border.all(
            color: Color(0xFFB1B1B1),
          ),
          color: Colors.transparent,
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share_rounded,
              color: AppTheme.blackFontColor,
            ),
            SizedBox(
              width: 5.fw,
            ),
            AutoSizeText("Share CV",
                style: getFontStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 10.fh,
                  color: AppTheme.blackFontColor,
                ))
          ],
        )));
  }
}

class ProfileWidgwet extends StatelessWidget {
  final String head;

  final String dis;
  const ProfileWidgwet({
    super.key,
    required this.head,
    required this.dis,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(head,
            style: getFontStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15.fh,
              color: AppTheme.blackFontColor,
            )),
        SizedBox(
          height: 10.fh,
        ),
        Container(
          height: 90.fh,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.fw),
            border: Border.all(
              color: Color(0xFFB1B1B1),
            ),
            color: Colors.transparent,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: AutoSizeText(dis,
                  style: getFontStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 9.fh,
                    color: AppTheme.blackFontColor,
                  )),
            ),
          ),
        )
      ],
    );
  }
}
