import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';
import 'package:gethire/widgets/Candidatescard.dart';

class LikedCandidates extends StatefulWidget {
  const LikedCandidates({super.key});

  @override
  State<LikedCandidates> createState() => _LikedCandidatesState();
}

class _LikedCandidatesState extends State<LikedCandidates> {
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
                      AutoSizeText("  Liked Candidates",
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
                    height: 650.fh,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CandidatesCard(),
                              CandidatesCard(),
                            ],
                          );
                        }),
                  )
                ]),
          ),
        ),
      ])),
    );
  }
}
