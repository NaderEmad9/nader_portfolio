import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Builder(
              builder: (context) {
                return MenuButton(
                  onTap: () => Scaffold.of(context).openDrawer(),
                );
              },
            ),
            const Spacer(
              flex: 2,
            ),
            if (!Responsive.isLargeMobile(context))
              const NavigationButtonList(),
            const Spacer(
              flex: 2,
            ),
            const ConnectButton(),
          ],
        ),
      ),
    );
  }
}
