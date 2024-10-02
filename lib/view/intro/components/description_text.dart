import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        // Responsive layout logic to handle different screen sizes
        String descriptionText = Responsive.isLargeMobile(context)
            ? 'I\'m skilled at developing high-quality mobile applications, focusing on building responsive and efficient user interfaces using Flutter, from concept to implementation.'
            : 'I\'m skilled at developing high-quality mobile applications,\nfocusing on building responsive and efficient user interfaces using Flutter, from concept to implementation.';

        return SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.9,
          child: Text(
            descriptionText,
            maxLines:
                Responsive.isLargeMobile(context) ? 5 : 4, // Adjust max lines
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.grey,
              wordSpacing: 2,
              fontSize: value,
            ),
          ),
        );
      },
    );
  }
}
