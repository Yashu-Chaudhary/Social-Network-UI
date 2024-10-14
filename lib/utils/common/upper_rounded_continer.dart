import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socail_network/utils/constants/color_constants.dart';

class UpperRoundedContainer extends StatelessWidget {
  final String text;
  const UpperRoundedContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);
    return SizedBox(
      height: device.size.width * 2,
      width: device.size.width * 2,
      child: Stack(children: [
        Positioned(
          top: -570,
          left: -190,
          child: Container(
            height: device.size.width * 2,
            width: device.size.width * 2,
            decoration: const BoxDecoration(
                color: PColors.primary, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 60,
          left: 80,
            child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ))
      ]),
    );
  }
}
