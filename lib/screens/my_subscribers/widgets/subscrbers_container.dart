import 'package:flutter/material.dart';
import 'package:socail_network/utils/constants/color_constants.dart';
import 'package:socail_network/utils/constants/image_strings.dart';

class SubscriberContainer extends StatelessWidget {
  final String name;
  final String image;
  const SubscriberContainer({
    super.key, required this.name, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);

    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(15),
      height: device.size.width * 0.45,
      width: device.size.width * 0.42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: PColors.milkWhite,
          boxShadow: const [
            BoxShadow(color: PColors.greyIcon, spreadRadius: 1, blurRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            child: Image.asset(PImages.profile, ),
          ),
          const SizedBox(height: 20,),
          Text('Name $name', style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
