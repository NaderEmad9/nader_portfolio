import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/intro_body.dart';
import 'package:flutter_portfolio/view/intro/components/social_media_list.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          if (!Responsive.isLargeMobile(context)) ...[
            const SocialMediaIconList(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          ],
          Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
