import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socail_network/utils/constants/color_constants.dart';

class TwoCircleBackground extends StatelessWidget {
  const TwoCircleBackground({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);
    return SizedBox(
      height: device.size.height * 0.93,
      width: device.size.height,
      child: Stack(
        children: [
          Positioned(
            right: -20,
            bottom: -20,
            child: Container(
              height: 110,
              width: 110,
              decoration: const BoxDecoration(
                  color: PColors.yellow, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            left: -20,
            top: device.size.height * 0.3,
            child: Container(
              height: 110,
              width: 110,
              decoration: const BoxDecoration(
                  color: PColors.primary, shape: BoxShape.circle),
            ),
          )
        ],
      ),
    );
  }
}
