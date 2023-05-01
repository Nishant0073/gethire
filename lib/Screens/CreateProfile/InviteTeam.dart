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
                  Padding(
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
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AutoSizeText('Team Name: dgswg',
                                  style: getFontStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9.fh,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  )),
                              AutoSizeText('Mail: yash00145@gmail.com',
                                  style: getFontStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9.fh,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  )),
                              AutoSizeText('Mobile number:564164645 ',
                                  style: getFontStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9.fh,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  )),
                              AutoSizeText('Role: uyhdfgyyudjbv',
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
                  ),
                  Container(height: 400.fh, child: InviteMemberList()),
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

class InviteMember extends StatelessWidget {
  final String name;
  final String email;
  final String mobile;
  final String role;

  const InviteMember(
      {Key? key,
      required this.name,
      required this.email,
      required this.mobile,
      required this.role});

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
                AutoSizeText('Team Name: $name',
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                AutoSizeText('Mail: $email',
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                AutoSizeText('Mobile number: $mobile',
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                AutoSizeText('Role: $role',
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

class InviteMemberList extends StatefulWidget {
  @override
  _InviteMemberListState createState() => _InviteMemberListState();
}

class _InviteMemberListState extends State<InviteMemberList> {
  List<Map<String, String>> members = [];

  void _addMember(String name, String email, String mobile, String role) {
    setState(() {
      members.add({
        'name': name,
        'email': email,
        'mobile': mobile,
        'role': role,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: members.length,
            itemBuilder: (context, index) {
              final member = members[index];
              return InviteMember(
                name: member['name'] ?? '',
                email: member['email'] ?? '',
                mobile: member['mobile'] ?? '',
                role: member['role'] ?? '',
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () async {
            final newMember = await showDialog<Map<String, String>>(
              context: context,
              builder: (context) => AddMemberDialog(
                onSave: (name, email, mobile, role) {
                  Navigator.of(context).pop({
                    'name': name,
                    'email': email,
                    'mobile': mobile,
                    'role': role,
                  });
                },
              ),
            );
            if (newMember != null) {
              _addMember(newMember['name']!, newMember['email']!,
                  newMember['mobile']!, newMember['role']!);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF3252BB),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
            height: 40.fh,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  size: 20.fh,
                  color: Color(0xFF3252BB),
                ),
                SizedBox(
                  width: 4.fw,
                ),
                AutoSizeText("Add More",
                    style: getFontStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.fh,
                      color: Color(0xFF3252BB),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AddMemberDialog extends StatefulWidget {
  final Function(String, String, String, String) onSave;

  const AddMemberDialog({Key? key, required this.onSave}) : super(key: key);

  @override
  _AddMemberDialogState createState() => _AddMemberDialogState();
}

class _AddMemberDialogState extends State<AddMemberDialog> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _roleController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _roleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text('Add a new member'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Enter the name of the member',
            ),
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter the email of the member',
            ),
          ),
          TextField(
            controller: _mobileController,
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              hintText: 'Enter the Mobile number of the member',
            ),
          ),
          TextField(
            controller: _roleController,
            decoration: InputDecoration(
              labelText: 'Role',
              hintText: 'Enter the role of the member',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final name = _nameController.text;
            final email = _emailController.text;
            final mobile = _mobileController.text;
            final role = _roleController.text;
            widget.onSave(name, email, mobile, role);
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
