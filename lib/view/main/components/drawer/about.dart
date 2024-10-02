import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Padding(
          padding: const EdgeInsets.only(top: defaultPadding * 1.5),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              const DrawerImage(),
              const Spacer(),
              Text('Nader Emad', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(
                height: defaultPadding / 4,
              ),
              Text(
                'Flutter Developer',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white60),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
