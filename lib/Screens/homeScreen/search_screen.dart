import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/size_config.dart';
import 'package:gethire/widgets/candidates_card.dart';

import '../../theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFBFBFB),
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
                        AutoSizeText("Candidate Profile",
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
                    searchBar(),
                    SizedBox(
                      height: 20.fh,
                    ),
                    AutoSizeText("Top Candidates List",
                        style: getFontStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.fh,
                          color: AppTheme.blackFontColor,
                        )),
                    SizedBox(
                      height: 20.fh,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CandidatesCard(),
                            CandidatesCard(),
                          ],
                        ),
                        SizedBox(
                          height: 20.fh,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CandidatesCard(),
                            CandidatesCard(),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.fh,
                    ),
                  ]),
            ),
          ),
        ]));
  }

  Container searchBar() {
    return Container(
      height: 50.fh,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFB1B1B1), width: 1),
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          SizedBox(
            width: 15.fw,
          ),
          Icon(Icons.search, color: const Color(0xFF3252BB), size: 25.fh
              // color: Color.fromARGB(255, 0, 0, 0),
              ),
          SizedBox(
            width: 10.fw,
          ),
          SizedBox(
            width: 280.fw,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Top candidates",
                hintStyle: getFontStyle(
                  color: const Color(0xFFB1A8A8),
                  fontSize: 15.fh,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
