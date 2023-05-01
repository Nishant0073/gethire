import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/CreateProfile/CreateprofileWidget/textFieldReceut.dart';
import 'package:gethire/sizeConfig.dart';

import '../../theme.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
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
                    AutoSizeText("Set Filters",
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
                Container(
                  height: 120.fh,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText("Job type",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.fh,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )),
                      SizedBox(
                        height: 10.fh,
                      ),
                      Container(height: 90.fh, child: SelectJobType()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.fh,
                ),
                Container(
                  height: 70.fh,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText("Mode of work",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.fh,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )),
                      SizedBox(
                        height: 10.fh,
                      ),
                      Container(height: 40.fh, child: ModeofWork()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.fh,
                ),
                NormalDropDownD(
                  name: "Select  City",
                  hint: '',
                ),
                SizedBox(
                  height: 10.fh,
                ),
                NormalDropDownD(
                  name: "Expected salary",
                  hint: '',
                ),
                SizedBox(
                  height: 10.fh,
                ),
                NormalDropDownS(
                  name: "Total Work Experience",
                  hint: '',
                ),
                SizedBox(
                  height: 10.fh,
                ),
                NormalDropDownD(
                  name: "Top Skills",
                  hint: '',
                ),
                SizedBox(
                  height: 20.fh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText("Reset",
                        style: getFontStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.fh,
                          color: Color(0xFF3252BB),
                        )),
                    Container(
                      width: 140.fw,
                      height: 40.fh,
                      decoration: BoxDecoration(
                        color: Color(0xFF3252BB),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: AutoSizeText("Submit",
                            style: getFontStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.fh,
                            )),
                      ),
                    )
                  ],
                )
              ]),
        ),
      ),
    ]));
  }
}

class ModeofWork extends StatefulWidget {
  @override
  _ModeofWorkState createState() => _ModeofWorkState();
}

class _ModeofWorkState extends State<ModeofWork> {
  List<bool> _isSelected = List.generate(3, (index) => false);
  List<String> _containerNames = [
    "Onsite",
    "Remote",
    "Hybrid",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected[0] = !_isSelected[0];
              });
            },
            child: Container(
                decoration: BoxDecoration(
                  color: _isSelected[0] ? Color(0xFF3252BB) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 29.fh,
                child: Container(
                  width: 93.fw,
                  height: 25.fh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(147, 146, 146, 146),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(_containerNames[0],
                        style: getFontStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.fh,
                          color: Color.fromARGB(255, 189, 188, 188),
                        )),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected[1] = !_isSelected[1];
              });
            },
            child: Container(
                decoration: BoxDecoration(
                  color: _isSelected[1] ? Color(0xFF3252BB) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 29.fh,
                child: Container(
                  width: 93.fw,
                  height: 25.fh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(147, 146, 146, 146),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(_containerNames[1],
                        style: getFontStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.fh,
                          color: Color.fromARGB(255, 189, 188, 188),
                        )),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected[2] = !_isSelected[2];
              });
            },
            child: Container(
                decoration: BoxDecoration(
                  color: _isSelected[2] ? Color(0xFF3252BB) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 29.fh,
                child: Container(
                  width: 93.fw,
                  height: 25.fh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(147, 146, 146, 146),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(_containerNames[2],
                        style: getFontStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.fh,
                          color: Color.fromARGB(255, 189, 188, 188),
                        )),
                  ),
                )),
          ),
        ]),
      ],
    ));
  }
}

class SelectJobType extends StatefulWidget {
  @override
  _SelectJobTypeState createState() => _SelectJobTypeState();
}

class _SelectJobTypeState extends State<SelectJobType> {
  List<bool> _isSelected = List.generate(5, (index) => false);
  List<String> _containerNames = [
    "Full-time",
    "Part-time",
    "Internship",
    "Freelance",
    "Contract"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected[1] = !_isSelected[1];
              });
            },
            child: Container(
                decoration: BoxDecoration(
                  color: _isSelected[1] ? Color(0xFF3252BB) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 29.fh,
                child: Container(
                  width: 93.fw,
                  height: 25.fh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(147, 146, 146, 146),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(_containerNames[1],
                        style: getFontStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.fh,
                          color: Color.fromARGB(255, 189, 188, 188),
                        )),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected[2] = !_isSelected[2];
              });
            },
            child: Container(
                decoration: BoxDecoration(
                  color: _isSelected[2] ? Color(0xFF3252BB) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 29.fh,
                child: Container(
                  width: 93.fw,
                  height: 25.fh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(147, 146, 146, 146),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(_containerNames[2],
                        style: getFontStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.fh,
                          color: Color.fromARGB(255, 189, 188, 188),
                        )),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected[3] = !_isSelected[3];
              });
            },
            child: Container(
                decoration: BoxDecoration(
                  color: _isSelected[3] ? Color(0xFF3252BB) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 29.fh,
                child: Container(
                  width: 93.fw,
                  height: 25.fh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(147, 146, 146, 146),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(_containerNames[3],
                        style: getFontStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.fh,
                          color: Color.fromARGB(255, 189, 188, 188),
                        )),
                  ),
                )),
          ),
        ]),
        SizedBox(
          height: 15.fh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected[4] = !_isSelected[4];
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _isSelected[4] ? Color(0xFF3252BB) : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 29.fh,
                  child: Container(
                    width: 93.fw,
                    height: 25.fh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromARGB(147, 146, 146, 146),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: AutoSizeText(_containerNames[4],
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10.fh,
                            color: Color.fromARGB(255, 189, 188, 188),
                          )),
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected[0] = !_isSelected[0];
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _isSelected[0] ? Color(0xFF3252BB) : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 29.fh,
                  child: Container(
                    width: 93.fw,
                    height: 25.fh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromARGB(147, 146, 146, 146),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: AutoSizeText(_containerNames[0],
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10.fh,
                            color: Color.fromARGB(255, 189, 188, 188),
                          )),
                    ),
                  )),
            )
          ],
        )
      ],
    ));
  }
}

class NormalDropDownD extends StatefulWidget {
  final String name;
  final String hint;
  const NormalDropDownD({super.key, required this.name, required this.hint});

  @override
  _NormalDropDownDState createState() => _NormalDropDownDState();
}

class _NormalDropDownDState extends State<NormalDropDownD> {
  String dropdownValue = 'pune';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10.fh),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name,
                style: getFontStyle(
                    color: AppTheme.blackFontColor,
                    textType: TextType.smallText,
                    fontWeight: FontWeight.w800)),
            SizedBox(
              height: 8.fh,
            ),
            Container(
              height: 40.fh,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
              ),
              child: DropdownButton<String>(
                underline: SizedBox(),
                style: TextStyle(
                    color: AppTheme.blackFontColor,
                    fontSize: 15.fw,
                    fontWeight: FontWeight.w400),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['pune', 'Goa', 'Akola', '4 year']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.fw),
                      child: Row(
                        children: [
                          AutoSizeText(
                            value,
                            style: getFontStyle(
                                color: AppTheme.blackFontColor,
                                textType: TextType.smallText,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 200.fw,
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}

class NormalDropDownS extends StatefulWidget {
  final String name;
  final String hint;
  const NormalDropDownS({super.key, required this.name, required this.hint});

  @override
  _NormalDropDownSState createState() => _NormalDropDownSState();
}

class _NormalDropDownSState extends State<NormalDropDownS> {
  String dropdownValue = 'pune';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10.fh),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name,
                style: getFontStyle(
                    color: AppTheme.blackFontColor,
                    textType: TextType.smallText,
                    fontWeight: FontWeight.w800)),
            SizedBox(
              height: 8.fh,
            ),
            Container(
              height: 40.fh,
              width: 250.fw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  Container(
                    height: 40.fh,
                    width: 170.fw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: DropdownButton<String>(
                      underline: SizedBox(),
                      style: TextStyle(
                          color: AppTheme.blackFontColor,
                          fontSize: 15.fw,
                          fontWeight: FontWeight.w400),
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['pune', 'Goa', 'Akola', '4 year']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.fw),
                            child: Row(
                              children: [
                                Text(value),
                                SizedBox(
                                  width: 50.fw,
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 20.fw,
                  ),
                  AutoSizeText(
                      "Years"
                      // widget.hint,
                      ,
                      style: getFontStyle(
                          color: AppTheme.blackFontColor,
                          textType: TextType.smallText,
                          fontWeight: FontWeight.w800))
                ],
              ),
            )
          ],
        ));
  }
}
