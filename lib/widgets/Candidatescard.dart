import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/homeScreen/CandidateVideo.dart';
import 'package:gethire/Screens/homeScreen/ProfileDetail.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class CandidatesCard extends StatelessWidget {
  const CandidatesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.fh,
      width: 164.fw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
      ),
      child: Container(
        width: 160.fw,
        height: 200.fh,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0.5,
                blurRadius: 7,
                offset: Offset(0, 7), // changes position of shadow
              ),
            ]),
        child: Column(children: [
          SizedBox(
            height: 10.fh,
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 45.fh,
            backgroundImage: AssetImage("assets/images/sample.png"),
          ),
          AutoSizeText("Profile ID:121212",
              style: getFontStyle(
                fontWeight: FontWeight.w600,
                fontSize: 9.5.fh,
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
                fontSize: 9.fh,
                color: AppTheme.blackFontColor,
              )),
          SizedBox(
            height: 5.fh,
          ),
          AutoSizeText("Location: Chennai",
              style: getFontStyle(
                fontWeight: FontWeight.w600,
                fontSize: 9.fh,
                color: AppTheme.blackFontColor,
              )),
          SizedBox(
            height: 5.fh,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileDetail()));
            },
            child: Container(
              height: 26.fh,
              width: 110.fw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.primaryColor),
              child: Center(
                child: AutoSizeText("View Details",
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 8.fh,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 5.fh,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CandidateVideo()));
            },
            child: Container(
              height: 26.fh,
              width: 110.fw,
              decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/videoIocn.png",
                      height: 10.fh,
                      width: 10.fw,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 5.fw,
                    ),
                    AutoSizeText("Watch Video",
                        style: getFontStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 8.fh,
                          color: AppTheme.primaryColor,
                        )),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
