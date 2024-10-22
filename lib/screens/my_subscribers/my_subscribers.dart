import 'package:flutter/material.dart';
import 'package:socail_network/screens/my_subscribers/widgets/subscrbers_container.dart';
import 'package:socail_network/utils/common/circular_heading_with_body_text.dart';
import 'package:socail_network/utils/constants/color_constants.dart';
import 'package:socail_network/utils/constants/image_strings.dart';

class MySubscribers extends StatelessWidget {
  const MySubscribers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: PColors.secondary,
      body: CircularHeaderWithBodyItems(
        headingText: 'My Subscribers',
        child: Column(
          children: [
            // ------------row one is there------------------
            Row(
              children: [
                SubscriberContainer(
                  name: 'Lorem',
                  image: PImages.profile,
                ),
                SubscriberContainer(
                  name: 'Lorem',
                  image: PImages.profile,
                ),
              ],
            ),
            // -----------row to
            Row(
              children: [
                SubscriberContainer(
                  name: 'Lorem',
                  image: PImages.profile,
                ),
                SubscriberContainer(
                  name: 'Lorem',
                  image: PImages.profile,
                ),
              ],
            ),
            Row(
              children: [
                SubscriberContainer(
                  name: 'Lorem',
                  image: PImages.profile,
                ),
                SubscriberContainer(
                  name: 'Lorem',
                  image: PImages.profile,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
