import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gethire/sizeConfig.dart';

import '../../../constants.dart';
import '../../../theme.dart';

class NavIcon extends StatelessWidget {
  final String path;
  final bool? active;
  const NavIcon({
    Key? key,
    required this.path,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 7.fw),
        height: Constants.bottomNavBarIconHeight,
        child: Column(children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              path,
              fit: BoxFit.contain,
              height: 20.fh,
              width: 20.fh,
              color: active == false
                  ? Color.fromARGB(255, 255, 255, 255)
                  : Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          const Spacer(),
          active == true
              ? Container(
                  height: 2.fh,
                  width: 30.fw,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                )
              : const SizedBox.shrink(),
        ]));
  }
}
