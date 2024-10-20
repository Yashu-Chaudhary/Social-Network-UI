import 'package:flutter/material.dart';
import 'package:socail_network/screens/home_page/homePage.dart';
import 'package:socail_network/screens/my_subscribers/my_subscribers.dart';
import 'package:socail_network/utils/common/verticl_nav_tile.dart';
import 'package:socail_network/utils/constants/color_constants.dart';
import 'package:socail_network/utils/constants/image_strings.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);
    return Container(
      color: PColors.secondary,
      child: Stack(
        children: [
          Positioned(
            bottom: -15,
            child: Container(
              width: device.size.width,
              height: device.size.height * 0.7,
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  gradient: PColors.primaryGradient,
                  borderRadius: BorderRadius.circular(20)),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Image(
                      image: AssetImage(
                          PImages.profile),
                    ),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  VerticalNavTile(
                    icon: Icons.home_outlined,
                    text: 'HOME',
                    nextScreen: HomePage(),
                  ),
                  VerticalNavTile(
                    icon: Icons.message,
                    text: 'MESSAGES',
                  ),
                  VerticalNavTile(
                    icon: Icons.people,
                    text: 'MY SUBSCRIBERS',
                    nextScreen: MySubscribers(),
                  ),
                  VerticalNavTile(
                    icon: Icons.settings,
                    text: 'SETTINGS',
                  ),
                  VerticalNavTile(
                    icon: Icons.notifications,
                    text: 'NOTIFICATION',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
