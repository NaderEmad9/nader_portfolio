import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/constants.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.color = Colors.white, // Default color is white
  });

  final String icon;
  final VoidCallback? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
        child: SvgPicture.asset(
          icon,
          color: color,
          height: 15,
          width: 15,
        ),
      ),
    );
  }
}
