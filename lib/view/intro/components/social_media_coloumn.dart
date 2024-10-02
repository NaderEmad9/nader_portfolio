import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
          icon: 'assets/icons/linkedin.svg',
          color: Colors.blue,
          onTap: () => launchUrl(
            Uri.parse('http://linkedin.com/in/nader-emad-6658b12b9'),
          ),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          color: Colors.white,
          onTap: () => launchUrl(
            Uri.parse('https://github.com/NaderEmad9'),
          ),
        ),
      ],
    );
  }
}
