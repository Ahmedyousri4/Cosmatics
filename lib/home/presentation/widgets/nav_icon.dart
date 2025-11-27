import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class NavIcon extends StatelessWidget {
  const NavIcon({
    super.key,
    required this.assetPath,
    required this.index,
    required this.selectedIndex,
    this.onTap,
  });
  final String assetPath;
  final int index;
  final int selectedIndex;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        assetPath,
       color: selectedIndex == index ? Color(0xffD75D72) : Color(0xff8E8FA9), 
      ),
    );
  }
}
