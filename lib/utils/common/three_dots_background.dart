import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socail_network/utils/constants/color_constants.dart';

class ThreeDotBackground extends StatelessWidget {
  const ThreeDotBackground({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);
    return Container(
      height: device.size.height * 0.93,
      width: device.size.width,
      color: PColors.secondary,
      child: Stack(
        children: [
          Positioned(
            left: -10,
            bottom: device.size.height * 0.2,
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: PColors.primary),
            ),
          ),
          Positioned(
            bottom: -20,
            right: 40,
            child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: PColors.primary),
            ),
          ),
          Positioned(
            right: -20,
            top: device.size.height * 0.2,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: PColors.yellow),
            ),
          ),
        ],
      ),
    );
  }
}
