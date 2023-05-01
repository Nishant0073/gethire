import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/size_config.dart';

import '../../theme.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreemState();
}

class _UserProfileScreemState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30.fh,
                backgroundImage: const AssetImage('assets/images/sample.png'),
                backgroundColor: const Color(0xFFC4C4C4),
              ),
              const SizedBox(
                height: 20,
              ),
              PhysicalModel(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "My Profile",
                              style: getFontStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15.fh,
                                color: AppTheme.blackFontColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                size: 15.0,
                                color: AppTheme.primaryColor,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        getInfoWidget("John", Icons.person_outline, ""),
                        getInfoWidget("HR@gmail.com", Icons.email_outlined, ""),
                        getInfoWidget("83290******", Icons.call_outlined, ""),
                        getInfoWidget("4-10-2000", Icons.cake_outlined, ""),
                        getInfoWidget("John", null, "assets/logo/linkedIn.png"),
                        getInfoWidget(
                            "5 years of experiance", Icons.work_outline, ""),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              PhysicalModel(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "Company Profile",
                              style: getFontStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15.fh,
                                color: AppTheme.blackFontColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                size: 15.0,
                                color: AppTheme.primaryColor,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        getInfoWidget(
                            "GetHire", Icons.corporate_fare_outlined, ""),
                        getInfoWidget(
                            "GetHire@gmail.com", Icons.email_outlined, ""),
                        getInfoWidget("83290******", Icons.call_outlined, ""),
                        getInfoWidget("Pune", Icons.location_on, ""),
                        getInfoWidget("GetHire.likedin.com", null,
                            "assets/logo/linkedIn.png"),
                        getInfoWidget("GetHire.com", Icons.language, ""),
                        getInfoWidget("50 Employees", Icons.work_outline, ""),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getInfoWidget(String title, IconData? icon, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          icon != null
              ? Icon(
                  icon,
                  size: 20.0,
                  color: AppTheme.graywhite,
                )
              : ImageIcon(
                  AssetImage(imagePath),
                  size: 30,
                  // color: AppTheme.graywhite,
                ),
          SizedBox(
            width: 10.fh,
          ),
          AutoSizeText(
            title,
            style: TextStyle(
              color: AppTheme.blackFontColor,
              fontSize: 12.fh,
            ),
          ),
        ],
      ),
    );
  }
}
