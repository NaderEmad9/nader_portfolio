import 'package:flutter/material.dart';
import '../../../res/constants.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onTap;
  const MenuButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0), // Adjust padding as needed
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: defaultPadding * 2.0 * value,
              width: defaultPadding * 2.0 * value,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
                boxShadow: const [
                  BoxShadow(color: Color(0xFFC4CBE5), offset: Offset(2, 2)),
                  BoxShadow(color: Color(0xFF5691c8), offset: Offset(-1, -1)),
                ],
              ),
              child: Center(
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return const LinearGradient(colors: [
                      Color(0xFF5691c8),
                      Color(0xFFC4CBE5),
                    ]).createShader(bounds);
                  },
                  child: FittedBox(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: defaultPadding * 1.2 * value,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
