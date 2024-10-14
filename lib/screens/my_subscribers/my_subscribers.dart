import 'package:flutter/material.dart';
import 'package:socail_network/utils/common/upper_rounded_continer.dart';
import 'package:socail_network/utils/constants/color_constants.dart';

class MySubscribers extends StatelessWidget {
  const MySubscribers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: PColors.secondary,
      body: Column(
        children: [
          UpperRoundedContainer(
            text: 'My Subscribers',
          ),
        ],
      ),
    );
  }
}
