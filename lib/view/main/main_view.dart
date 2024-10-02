import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    // Determine if it's mobile or large mobile for padding
    bool isMobile = Responsive.isMobile(context);
    double topPadding =
        MediaQuery.of(context).padding.top; // Get the top padding for the notch

    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: (kIsWeb) ? 0.0 : topPadding * 0.02,
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                color: const Color(0xFF000515),
                padding: EdgeInsets.only(
                  top: topPadding + 8.0,
                  left: 32.0, // Increased left padding
                  right: 32.0, // Increased right padding
                  bottom: 8.0, // Added bottom padding for shadow visibility
                ),
                child: Row(
                  children: [
                    Builder(
                      builder: (context) {
                        return MenuButton(
                          onTap: () => Scaffold.of(context).openDrawer(),
                        );
                      },
                    ),
                    const Spacer(),
                    const NavigationButtonList(),
                    const Spacer(),
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: [...pages],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
