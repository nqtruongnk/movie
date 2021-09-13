import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final VoidCallback onPress;
  const SocialIcon({Key? key, required this.iconSrc, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 19),
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: size.height * 0.03,
          width: size.width * 0.03,
        ),
      ),
    );
  }
}
