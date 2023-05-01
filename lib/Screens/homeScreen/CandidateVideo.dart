import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/homeScreen/FilterScreen.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class CandidateVideo extends StatefulWidget {
  const CandidateVideo({super.key});

  @override
  State<CandidateVideo> createState() => _CandidateVideoState();
}

class _CandidateVideoState extends State<CandidateVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    AutoSizeText("Candidate Video",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 400.fh,
                      width: 300.fw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                          size: 100.fh,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.fh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Iconss(
                      image: "assets/icons/like.png",
                      text: "Like",
                    ),
                    Iconss(
                      image: "assets/icons/view.png",
                      text: "View",
                    ),
                    Iconss(
                      image: "assets/icons/chat.png",
                      text: "Chat",
                    ),
                    Iconss(
                      image: "assets/icons/DOWNLOAD.png",
                      text: "CV",
                    ),
                    Iconss(
                      image: "assets/icons/send.png",
                      text: "Send",
                    ),
                  ],
                )
              ]),
        ),
      ),
    ]));
  }
}

class Iconss extends StatelessWidget {
  final String text;
  final String image;

  const Iconss({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          height: 40.fh,
          width: 50.fw,
        ),
        AutoSizeText(text,
            style: getFontStyle(
              fontWeight: FontWeight.w600,
              fontSize: 8.fh,
              color: Color.fromARGB(255, 0, 0, 0),
            ))
      ],
    );
  }
}
