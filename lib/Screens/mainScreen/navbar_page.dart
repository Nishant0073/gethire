import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gethire/Screens/homeScreen/home_screem.dart';
import 'package:gethire/Screens/mainScreen/widgets/nav_icon.dart';
import 'package:gethire/Screens/message/messagemain.dart';
import 'package:gethire/size_config.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, required this.indexPage});
  final int indexPage;
  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int currentIndex = 0;
  final List _pages = [
    const HomeScreen(),
    const MessageMain(),
    // NotificationScreen(),
    // MainProfileScreen(),
  ];
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    currentIndex = widget.indexPage;
  }

  @override
  Widget build(BuildContext context) {
    DateTime timeBackPressed = DateTime.now();
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: WillPopScope(
        onWillPop: () async {
          final differeance = DateTime.now().difference(timeBackPressed);
          timeBackPressed = DateTime.now();
          if (differeance >= const Duration(seconds: 2)) {
            Fluttertoast.showToast(
              msg: 'Press the back button again to exit',
            );
            return false;
          } else {
            Fluttertoast.cancel();
            if (Platform.isAndroid) {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            } else if (Platform.isIOS) {
              exit(0);
            }
            return true;
          }
        },
        child: SafeArea(
            child: Stack(children: [
          Positioned.fill(
            child: _pages[currentIndex],
          ),
        ])),
      ),
      bottomNavigationBar: Container(
        height: 120,
        color: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 80.fh,
                padding: EdgeInsets.symmetric(horizontal: 10.fw),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),

                // child: Column(
                //   children: [
                //     SizedBox(
                //       height: 10.fh,
                //     ),
                //     Container(
                //       decoration: BoxDecoration(
                //           borderRadius: const BorderRadius.all(
                //             Radius.circular(30),
                //           ),
                //           border: Border.all(
                //             color: const Color.fromARGB(255, 0, 0, 0),
                //             width: 1,
                //           )),
                //       child: ClipRRect(
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(30),
                //         ),
                //         child: BottomNavigationBar(
                //             elevation: 0,
                //             type: BottomNavigationBarType.fixed,
                //             backgroundColor: const Color(0xFF3252BB),
                //             onTap: onTap,
                //             currentIndex: currentIndex,
                //             selectedItemColor:
                //                 const Color.fromARGB(255, 255, 255, 255),
                //             unselectedItemColor:
                //                 const Color.fromARGB(255, 255, 255, 255),
                //             showSelectedLabels: false,
                //             showUnselectedLabels: false,
                //             items: [
                //               const BottomNavigationBarItem(
                //                 label: "",
                //                 icon: NavIcon(
                //                   path: 'assets/icons/homeicon.svg',
                //                 ),
                //                 activeIcon: NavIcon(
                //                   path: 'assets/icons/homeicon.svg',
                //                   active: true,
                //                 ),
                //               ),
                //               const BottomNavigationBarItem(
                //                 label: "",
                //                 icon: NavIcon(
                //                   path: 'assets/icons/message.svg',
                //                 ),
                //                 activeIcon: NavIcon(
                //                   path: 'assets/icons/message.svg',
                //                   active: true,
                //                 ),
                //               ),
                //               const BottomNavigationBarItem(
                //                 label: "",
                //                 icon: NavIcon(
                //                   path: 'assets/icons/noti.svg',
                //                 ),
                //                 activeIcon: NavIcon(
                //                   path: 'assets/icons/noti.svg',
                //                   active: true,
                //                 ),
                //               ),
                //               const BottomNavigationBarItem(
                //                 label: "",
                //                 icon: NavIcon(
                //                   path: 'assets/icons/profile.svg',
                //                 ),
                //                 activeIcon: NavIcon(
                //                   path: 'assets/icons/profile.svg',
                //                   active: true,
                //                 ),
                //               ),
                //             ]),
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.fh),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1,
                      )),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    child: BottomNavigationBar(
                        elevation: 0,
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: const Color(0xFF3252BB),
                        onTap: onTap,
                        currentIndex: currentIndex,
                        selectedItemColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        unselectedItemColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        items: [
                          const BottomNavigationBarItem(
                            label: "",
                            icon: NavIcon(
                              path: 'assets/icons/homeicon.svg',
                            ),
                            activeIcon: NavIcon(
                              path: 'assets/icons/homeicon.svg',
                              active: true,
                            ),
                          ),
                          const BottomNavigationBarItem(
                            label: "",
                            icon: NavIcon(
                              path: 'assets/icons/message.svg',
                            ),
                            activeIcon: NavIcon(
                              path: 'assets/icons/message.svg',
                              active: true,
                            ),
                          ),
                          const BottomNavigationBarItem(
                            label: "",
                            icon: NavIcon(
                              path: 'assets/icons/noti.svg',
                            ),
                            activeIcon: NavIcon(
                              path: 'assets/icons/noti.svg',
                              active: true,
                            ),
                          ),
                          const BottomNavigationBarItem(
                            label: "",
                            icon: NavIcon(
                              path: 'assets/icons/profile.svg',
                            ),
                            activeIcon: NavIcon(
                              path: 'assets/icons/profile.svg',
                              active: true,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
