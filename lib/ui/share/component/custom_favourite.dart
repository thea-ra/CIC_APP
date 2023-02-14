import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFavorite extends StatelessWidget {
  final double? logoHeight1;
  final double? logoHeight2;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final Color? backgroudColor;
  final bool isfav;
  const CustomFavorite({
    super.key,
    this.backgroudColor,
    this.isfav = false,
    this.onPressed,
    this.width,
    this.height,
    this.logoHeight1,
    this.logoHeight2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 30,
      height: height ?? 30,
      decoration: BoxDecoration(
        color: backgroudColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: GestureDetector(
          onTap: onPressed,
          child: isfav
              ? SvgPicture.asset(
                  'asset/svg/Heart.svg',
                  height: logoHeight1 ?? 20,
                )
              : SvgPicture.asset(
                  'asset/svg/favorite_red.svg',
                  height: logoHeight2 ?? 20,
                ),
        ),
      ),
    );
  }
}
