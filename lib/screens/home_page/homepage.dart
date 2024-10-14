import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socail_network/utils/common/interests_container.dart';
import 'package:socail_network/utils/common/three_dots_background.dart';
import 'package:socail_network/utils/constants/color_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        height: device.size.height,
        width: device.size.width,
        child: Stack(
          children: [
            const ThreeDotBackground(),
            Container(
              height: device.size.height * 0.35,
              width: device.size.width,
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 80,
                bottom: 80,
              ),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: PColors.milkWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    child: Image(
                      image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/128/3135/3135715.png',
                      ),
                    ),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, \nconsectetuer adipiscing elit, sed \ndiam nonummy nibh eunmod \ntincidunt ut',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 95,
              child: Container(
                height: device.size.height * 0.356,
                width: device.size.width * 0.89,
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 50,
                ),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: PColors.milkWhite,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                child: const Column(
                  children: [
                    Text(
                      'My interests',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InterestContainer(
                          text: 'music',
                        ),
                        InterestContainer(
                          text: 'food',
                        ),
                        InterestContainer(
                          text: 'culture',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InterestContainer(
                          text: 'drinks',
                        ),
                        InterestContainer(
                          text: 'sports',
                        ),
                        InterestContainer(
                          text: 'travel',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InterestContainer(
                          text: 'fun',
                        ),
                        InterestContainer(
                          text: 'business',
                        ),
                        InterestContainer(
                          text: 'art',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
