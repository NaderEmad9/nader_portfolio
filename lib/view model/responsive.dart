import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.desktop,
    required this.largeMobile,
    required this.mobile,
    required this.tablet,
    this.extraLargeScreen,
  }) : super(key: key);

  final Widget desktop;
  final Widget? largeMobile;
  final Widget mobile;
  final Widget? tablet;
  final Widget? extraLargeScreen;

  // Define breakpoints
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500; // Mobile threshold
  }

  static bool isLargeMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700; // Large Mobile threshold
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1080; // Tablet threshold
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1024; // Desktop threshold
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // Check the width against breakpoints
    if (isMobile(context)) {
      return mobile; // Use mobile layout
    } else if (isLargeMobile(context) && largeMobile != null) {
      return largeMobile!; // Use large mobile layout
    } else if (size.width > 1400 && extraLargeScreen != null && kIsWeb) {
      return extraLargeScreen!;
    } else if (size.width >= 700 && size.width < 1024 && tablet != null) {
      return tablet!; // Use tablet layout
    } else if (size.width < 700) {
      return mobile; // Fallback to mobile if width is between desktop and tablet
    } else {
      return desktop; // Use desktop layout
    }
  }
}
