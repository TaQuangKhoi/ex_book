import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EyeIcon extends StatefulWidget {
  final Function showHidePassword;

  const EyeIcon({super.key, required this.showHidePassword});

  @override
  State<EyeIcon> createState() => _EyeIconState();
}

class _EyeIconState extends State<EyeIcon> {
  String eyeName = 'eye-icon.svg';
  String eyeSlashName = 'eye-slash-icon.svg';
  String iconName = 'eye-icon.svg';

  late Widget icon;

  Widget getIcon(name) {
    const String assetPath = 'assets/sign_up_page/';
    return SvgPicture.asset(
      assetPath + name,
      semanticsLabel: 'Show Password Icon',
      fit: BoxFit.scaleDown,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    icon = getIcon(eyeName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            if (iconName == 'eye-icon.svg') {
              iconName = 'eye-slash-icon.svg';
              icon = getIcon(iconName);
              log('iconName: $iconName');
            } else {
              iconName = 'eye-icon.svg';
              icon = getIcon(iconName);
              log('iconName: $iconName');
            }
          });
          widget.showHidePassword();
        },
        icon: icon);
  }
}
