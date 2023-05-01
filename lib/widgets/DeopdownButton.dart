import 'package:flutter/material.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class DeopdownButton extends StatefulWidget {
  final String name;
  final String hint;
  const DeopdownButton({super.key, required this.name, required this.hint});

  @override
  State<DeopdownButton> createState() => _DeopdownButtonState();
}

class _DeopdownButtonState extends State<DeopdownButton> {
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
