
import 'package:flutter/material.dart';
import 'package:socail_network/utils/common/upper_rounded_continer.dart';

class CircularHeaderWithBodyItems extends StatelessWidget {
  final String headingText;
  final Widget? child;
  const CircularHeaderWithBodyItems({
    super.key,
    required this.headingText,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        UpperRoundedContainer(
          text: headingText,
        ),
        Positioned(
          top: 160,
          child: SizedBox(child: child),
        )
      ],
    );
  }
}
