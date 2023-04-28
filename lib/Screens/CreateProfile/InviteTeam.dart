import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/CreateProfile/CreateprofileWidget/textFieldReceut.dart';
import 'package:gethire/Screens/mainScreen/navbarPage.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class CreateProfile3 extends StatefulWidget {
  const CreateProfile3({super.key});

  @override
  State<CreateProfile3> createState() => _CreateProfile3State();
}

class _CreateProfile3State extends State<CreateProfile3> {
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
                      AutoSizeText("Invite Tream",
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
                  Container(height: 500.fh, child: InviteMemberList()),
                  SizedBox(
                    height: 40.fh,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavBarPage(
                                  indexPage: 0,
                                )),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.fw),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: Text(
                              'Save',
                              style: getFontStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xFF3252BB),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ])),
    );
  }
}

class InviteMemberList extends StatefulWidget {
  @override
  _InviteMemberListState createState() => _InviteMemberListState();
}

class _InviteMemberListState extends State<InviteMemberList> {
  List<Widget> memberWidgets = [InviteMember()];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: memberWidgets.length,
            itemBuilder: (BuildContext context, int index) {
              return memberWidgets[index];
            },
          ),
        ),
        SizedBox(
          height: 10.fh,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              memberWidgets.add(InviteMember());
            });
          },
          child: Container(
              width: double.infinity,
              height: 45.fh,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF3252BB),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xFF3252BB),
                    ),
                    SizedBox(
                      width: 4.fw,
                    ),
                    Text(
                      'Add More',
                      style: getFontStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}

class InviteMember extends StatelessWidget {
  const InviteMember({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.fh),
      child: Container(
        height: 85.fh,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 22.fh,
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/OptonScreenPng1.png",
                ),
                radius: 20.fh,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AutoSizeText('Team Name: Gethire',
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                AutoSizeText('Mail: Gethire@gmail.com',
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                AutoSizeText('Mobile number: 9080000000',
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                AutoSizeText('Role: Recruiter',
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      height: 15.fh,
                      width: 15.fh,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check,
                          size: 10.fh,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.fh,
                ),
                AutoSizeText("Active",
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 1.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                SizedBox(
                  height: 5.fh,
                ),
              ],
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
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(
                  height: 5.fh,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}





// class InviteMember extends StatelessWidget {
//   const InviteMember({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 85.fh,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Color.fromARGB(255, 0, 0, 0),
//           width: 1,
//         ),
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.transparent,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           CircleAvatar(
//             radius: 22.fh,
//             backgroundColor: Color.fromARGB(255, 0, 0, 0),
//             child: CircleAvatar(
//               backgroundImage: AssetImage(
//                 "assets/images/OptonScreenPng1.png",
//               ),
//               radius: 20.fh,
//               backgroundColor: Color.fromARGB(255, 255, 255, 255),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               AutoSizeText('Team Name: Gethire',
//                   style: getFontStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 10.fh,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   )),
//               AutoSizeText('Mail: Gethire@gmail.com',
//                   style: getFontStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 10.fh,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   )),
//               AutoSizeText('Mobile number: 9080000000',
//                   style: getFontStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 10.fh,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   )),
//               AutoSizeText('Role: Recruiter',
//                   style: getFontStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 10.fh,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   )),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 15.fh,
//                     width: 15.fh,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Color.fromARGB(255, 0, 0, 0),
//                         width: 1,
//                       ),
//                       borderRadius: BorderRadius.circular(200),
//                       color: Colors.transparent,
//                     ),
//                     child: Center(
//                       child: Icon(
//                         Icons.check,
//                         size: 10.fh,
//                         color: Color.fromARGB(255, 0, 0, 0),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 5.fh,
//               ),
//               AutoSizeText("Active",
//                   style: getFontStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 1.fh,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   )),
//               SizedBox(
//                 height: 5.fh,
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               SizedBox(
//                 height: 5.fh,
//               ),
//               GestureDetector(
//                 onTap: () {},
//                 child: Icon(
//                   Icons.more_vert,
//                   size: 15.fh,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//               SizedBox(
//                 height: 5.fh,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
