import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/LikedCandidates.dart/like_candi.dart';
import 'package:gethire/Screens/PostJob/post_job_main.dart';
import 'package:gethire/Screens/Subscription/subscription.dart';
import 'package:gethire/Screens/homeScreen/filter_screen.dart';
import 'package:gethire/Screens/homeScreen/profile_screen.dart';
import 'package:gethire/Screens/homeScreen/search_screen.dart';
import 'package:gethire/size_config.dart';
import 'package:gethire/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: getDrawer(context),
        key: _key,
        body: Stack(children: [
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.fw),
              child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: 15.fh,
                    ),
                    header(_key),
                    SizedBox(
                      height: 15.fh,
                    ),
                    searchBar(),
                    SizedBox(
                      height: 15.fh,
                    ),
                    JobPosting(),
                    SizedBox(
                      height: 15.fh,
                    ),
                    PendingJobPost(),
                    SizedBox(
                      height: 15.fh,
                    ),
                    ActiveJobPost(),
                    SizedBox(
                      height: 15.fh,
                    ),
                    CloseJobPost(),
                    SizedBox(
                      height: 15.fh,
                    ),
                    DraftJobPost(),
                  ]),
            ),
          ),
        ]));
  }

  Container PendingJobPost() {
    return Container(
        height: 90.fh,
        decoration: const BoxDecoration(
            color: Color(0xFFE9E9E9),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.fw),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pending Job Post",
                        style: getFontStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15.fh,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View more",
                        style: getFontStyle(
                            color: const Color(0xFF3252BB),
                            fontSize: 8.fh,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                      height: 40.fh,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          AutoSizeText("Job Title",
                              style: getFontStyle(
                                  color: const Color(0xFF000000),
                                  fontSize: 9.fh,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 1.fw,
                          ),
                          AutoSizeText("23/12/2023",
                              style: getFontStyle(
                                  color: const Color(0xFFB1B1B1),
                                  fontSize: 9.fh,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 1.fw,
                          ),
                          Container(
                            height: 25.fh,
                            width: 100.fw,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  width: 1,
                                ),
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Status",
                                style: getFontStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 9.fh,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1.fw,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5.fh,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.more_vert,
                                  size: 15.fh,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              SizedBox(
                                height: 5.fh,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 1.fw,
                          ),
                        ],
                      ))
                ])));
  }

  Container ActiveJobPost() {
    return Container(
        height: 100.fh,
        decoration: const BoxDecoration(
            color: Color(0xFFE9E9E9),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.fw),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Active Job ",
                        style: getFontStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15.fh,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View more",
                        style: getFontStyle(
                            color: const Color(0xFF3252BB),
                            fontSize: 8.fh,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                      height: 50.fh,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          AutoSizeText("Job Title",
                              style: getFontStyle(
                                  color: const Color(0xFF000000),
                                  fontSize: 9.fh,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 1.fw,
                          ),
                          AutoSizeText("23/12/2023",
                              style: getFontStyle(
                                  color: const Color(0xFFB1B1B1),
                                  fontSize: 9.fh,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 1.fw,
                          ),
                          Container(
                            height: 40.fh,
                            width: 100.fw,
                            decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/icons/file1.png",
                                          height: 19.fh, width: 22.fw),
                                      AutoSizeText("07",
                                          style: getFontStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 9.fh,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/icons/file2.png",
                                          height: 19.fh, width: 22.fw),
                                      AutoSizeText("07",
                                          style: getFontStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 9.fh,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/icons/file3.png",
                                          height: 19.fh, width: 22.fw),
                                      AutoSizeText("07",
                                          style: getFontStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 9.fh,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/icons/file4.png",
                                          height: 19.fh, width: 22.fw),
                                      AutoSizeText("07",
                                          style: getFontStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 9.fh,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1.fw,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5.fh,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.more_vert,
                                  size: 15.fh,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              SizedBox(
                                height: 5.fh,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 1.fw,
                          ),
                        ],
                      ))
                ])));
  }

  Container CloseJobPost() {
    return Container(
        height: 100.fh,
        decoration: const BoxDecoration(
            color: Color(0xFFE9E9E9),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.fw),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Closed Job ",
                        style: getFontStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15.fh,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View more",
                        style: getFontStyle(
                            color: const Color(0xFF3252BB),
                            fontSize: 8.fh,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                      height: 50.fh,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          AutoSizeText("Job Title",
                              style: getFontStyle(
                                  color: const Color(0xFF000000),
                                  fontSize: 9.fh,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 1.fw,
                          ),
                          AutoSizeText("23/12/2023",
                              style: getFontStyle(
                                  color: const Color(0xFFB1B1B1),
                                  fontSize: 9.fh,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 1.fw,
                          ),
                          Container(
                            height: 40.fh,
                            width: 100.fw,
                            decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/icons/file1.png",
                                          height: 19.fh, width: 22.fw),
                                      AutoSizeText("07",
                                          style: getFontStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 9.fh,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/icons/file2.png",
                                          height: 19.fh, width: 22.fw),
                                      AutoSizeText("07",
                                          style: getFontStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 9.fh,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/icons/file3.png",
                                          height: 19.fh, width: 22.fw),
                                      AutoSizeText("07",
                                          style: getFontStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 9.fh,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/icons/file4.png",
                                          height: 19.fh, width: 22.fw),
                                      AutoSizeText("07",
                                          style: getFontStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 9.fh,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1.fw,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5.fh,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.more_vert,
                                  size: 15.fh,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              SizedBox(
                                height: 5.fh,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 1.fw,
                          ),
                        ],
                      ))
                ])));
  }

  Container DraftJobPost() {
    return Container(
        height: 100.fh,
        decoration: const BoxDecoration(
            color: Color(0xFFE9E9E9),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.fw),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Drafted Job",
                        style: getFontStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15.fh,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View more",
                        style: getFontStyle(
                            color: const Color(0xFF3252BB),
                            fontSize: 8.fh,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                      height: 50.fh,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.fw),
                            child: AutoSizeText("Job Title",
                                style: getFontStyle(
                                    color: const Color(0xFF000000),
                                    fontSize: 9.fh,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ))
                ])));
  }

  Container JobPosting() {
    return Container(
      height: 90.fh,
      decoration: const BoxDecoration(
          color: Color(0xFFE9E9E9),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.fw),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  "Job Postings",
                  style: getFontStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15.fh,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 86.fw,
                  height: 40.fh,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1,
                      ),
                      color: Colors.transparent,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "09",
                          style: getFontStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 9.fh,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Active Jobs",
                          style: getFontStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 9.fh,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 86.fw,
                  height: 40.fh,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1,
                      ),
                      color: Colors.transparent,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "09",
                          style: getFontStyle(
                              fontSize: 9.fh,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Closed Jobs",
                          style: getFontStyle(
                              fontSize: 9.fh,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 86.fw,
                  height: 40.fh,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1,
                      ),
                      color: Colors.transparent,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "09",
                          style: getFontStyle(
                              color: const Color(0xFF000000),
                              fontSize: 9.fh,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Onhold Jobs",
                          style: getFontStyle(
                              color: const Color(0xFF000000),
                              fontSize: 9.fh,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector searchBar() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SearchScreen()));
      },
      child: Container(
        height: 50.fh,
        decoration: const BoxDecoration(
            color: Color(0xFFE9E9E9),
            borderRadius: BorderRadius.all(Radius.circular(10))),
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
            Text(
              "Search for a Intern",
              style: getFontStyle(
                  color: const Color(0xFFB1A8A8),
                  fontSize: 12.fh,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FilterScreen()));
              },
              child: Icon(Icons.filter_alt_outlined,
                  color: const Color(0xFF3252BB), size: 20.fh
                  // color: Color.fromARGB(255, 0, 0, 0),
                  ),
            ),
            SizedBox(
              width: 10.fw,
            ),
          ],
        ),
      ),
    );
  }

  Column header(_key) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserProfileScreen(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 30.fh,
                backgroundImage: const AssetImage('assets/images/sample.png'),
                backgroundColor: const Color(0xFFC4C4C4),
              ),
            ),
            SizedBox(
              width: 10.fw,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello, Welcome ",
                  style: getFontStyle(
                      color: AppTheme.blackFontColor,
                      fontSize: 18.fh,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 3.fh,
                ),
                Text(
                  "Let’s Find Your Best Candidate ",
                  style: TextStyle(
                      color: const Color(0xFFB1A8A8),
                      fontSize: 11.fh,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              width: 6.fw,
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                _key.currentState.openDrawer();
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PostJobMian()));
              },
              child: Container(
                width: 125.fw,
                height: 25.fh,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF3252BB),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Center(
                  child: Text(
                    "Post Job",
                    style: getFontStyle(
                        color: const Color(0xFF3252BB),
                        fontSize: 10.fh,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget getDrawer(BuildContext context) {
  print("DRAWER CALLED!");
  return Drawer(
    backgroundColor: const Color(0xFF3252BB),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          margin: EdgeInsets.symmetric(vertical: 20.fh, horizontal: 10.fw),
          accountName: const Text('Oflutter.com'),
          accountEmail: const Text('example@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                fit: BoxFit.cover,
                width: 90.fh,
                height: 90.fh,
              ),
            ),
          ),
          decoration: const BoxDecoration(
            color: Color(0xFF3252BB),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.white,
            size: 25.fh,
          ),
          title: Text(
            'Settings',
            style: getFontStyle(fontSize: 15.fh, fontWeight: FontWeight.w600),
          ),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: Colors.white,
          ),
          title: Text(
            'Admin Panel',
            style: getFontStyle(fontSize: 15.fh, fontWeight: FontWeight.w600),
          ),
          onTap: () => null,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Subscription()));
          },
          child: ListTile(
            leading: const Icon(
              Icons.subscriptions,
              color: Colors.white,
            ),
            title: Text(
              'Subscription',
              style: getFontStyle(fontSize: 15.fh, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Subscription()));
            },
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LikedCandidates()));
          },
          child: ListTile(
            leading: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            title: Text(
              'Liked Candidates',
              style: getFontStyle(fontSize: 15.fh, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
          title: Text(
            'Logout',
            style: getFontStyle(fontSize: 15.fh, fontWeight: FontWeight.w600),
          ),
          onTap: () => null,
        ),
      ],
    ),
  );
}
