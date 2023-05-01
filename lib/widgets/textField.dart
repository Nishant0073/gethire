import 'package:flutter/material.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class TextFieldcustom extends StatelessWidget {
  final String name;
  final String hint;
  final TextEditingController controller;

  const TextFieldcustom({
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
                  color: Color(0xFFFFFFFF),
                ),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
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
