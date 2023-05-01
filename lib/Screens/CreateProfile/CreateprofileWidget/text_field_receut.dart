import 'package:flutter/material.dart';
import 'package:gethire/size_config.dart';
import 'package:gethire/theme.dart';

class TextFieldRrecrut extends StatelessWidget {
  final String name;
  final String hint;
  final TextEditingController controller;

  const TextFieldRrecrut({
    super.key,
    required this.name,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.fw, vertical: 10.fh),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: getFontStyle(
                    color: AppTheme.blackFontColor,
                    textType: TextType.smallText,
                    fontWeight: FontWeight.w800)),
            SizedBox(
              height: 8.fh,
            ),
            Container(
                height: 40.fh,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFFFFFF),
                ),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: getFontStyle(
                        color: AppTheme.graywhite,
                        fontSize: 15.fw,
                        fontWeight: FontWeight.w400),
                  ),
                ))
          ],
        ));
  }
}

class NormalDropDown extends StatefulWidget {
  final String name;
  final String hint;
  const NormalDropDown({super.key, required this.name, required this.hint});

  @override
  _NormalDropDownState createState() => _NormalDropDownState();
}

class _NormalDropDownState extends State<NormalDropDown> {
  String dropdownValue = '1 year';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.fw, vertical: 10.fh),
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
                color: const Color(0xFFFFFFFF),
              ),
              child: DropdownButton<String>(
                underline: const SizedBox(),
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
                items: <String>['1 year', '2 year', '3 year', '4 year']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.fw),
                      child: Row(
                        children: [
                          Text(value),
                          SizedBox(
                            width: 170.fw,
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

class OptionalTextFieldRrecrut extends StatelessWidget {
  final String name;
  final String hint;

  const OptionalTextFieldRrecrut({
    super.key,
    required this.name,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.fw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,
                  style: getFontStyle(
                      color: AppTheme.blackFontColor,
                      textType: TextType.smallText,
                      fontWeight: FontWeight.w400)),
              Text("Optional ",
                  style: getFontStyle(
                      color: AppTheme.graywhite,
                      fontSize: 10.fw,
                      fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(
            height: 10.fh,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(102, 0, 0, 0).withOpacity(0.1)),
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10.fh),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(90, 0, 0, 0).withOpacity(0.1),
                  offset: const Offset(0, 4),
                  blurRadius: 6,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: getFontStyle(
                    color: AppTheme.graywhite,
                    fontSize: 10.fh,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.fh),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.only(left: 20.fw, bottom: 11.fh, top: 11.fh),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowTextFieldRrecrut extends StatelessWidget {
  final String name1;
  final String hint1;
  final String name2;
  final String hint2;

  const RowTextFieldRrecrut({
    super.key,
    required this.name1,
    required this.hint1,
    required this.name2,
    required this.hint2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.fw),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name1,
                  style: getFontStyle(
                      color: AppTheme.blackFontColor,
                      textType: TextType.smallText,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 10.fh,
              ),
              Container(
                width: 130.fw,
                decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          const Color.fromARGB(102, 0, 0, 0).withOpacity(0.1)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.fh),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(90, 0, 0, 0).withOpacity(0.1),
                      offset: const Offset(0, 4),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hint1,
                    hintStyle: getFontStyle(
                        color: AppTheme.graywhite,
                        fontSize: 10.fh,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.fh),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 10.fw, bottom: 11.fh, top: 11.fh),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name1,
                  style: getFontStyle(
                      color: AppTheme.blackFontColor,
                      textType: TextType.smallText,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 10.fh,
              ),
              Container(
                width: 130.fw,
                decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          const Color.fromARGB(102, 0, 0, 0).withOpacity(0.1)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.fh),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(90, 0, 0, 0).withOpacity(0.1),
                      offset: const Offset(0, 4),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hint1,
                    hintStyle: getFontStyle(
                        color: AppTheme.graywhite,
                        fontSize: 10.fh,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.fh),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 10.fw, bottom: 11.fh, top: 11.fh),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
