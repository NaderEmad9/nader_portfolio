import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(
            'https://drive.google.com/file/d/1yn5X4TR8ESvtP1zdo0f9Wu4mwuL6p7ZV/view?usp=sharing'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFF2980b9), offset: Offset(0, -1), blurRadius: 5),
            BoxShadow(
                color: Color(0xFF4ca2cd), offset: Offset(0, 1), blurRadius: 5),
          ],
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF457fca),
                Color(0xFF4ca2cd),
              ]),
        ),
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Download CV',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Colors.white,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: defaultPadding / 3,
              ),
              const Icon(
                FontAwesomeIcons.download,
                color: Colors.white70,
                size: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
