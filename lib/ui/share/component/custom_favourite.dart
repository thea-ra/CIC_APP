import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFavorite extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? backgroudColor;
  final isfav;
  const CustomFavorite(
      {super.key, this.backgroudColor, this.isfav = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: backgroudColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: isfav
              ? SvgPicture.asset(
                  'asset/svg/Heart.svg',
                  height: 20,
                )
              : SvgPicture.asset(
                  'asset/svg/favorite_red.svg',
                  height: 20,
                ),
        ),
      ),
    );
  }
}
