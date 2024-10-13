import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socail_network/utils/constants/color_constants.dart';
import 'package:socail_network/utils/constants/string_constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: PColors.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // ------------text----------------
              const Text(
                PTexts.socialNetwork,
                style: TextStyle(
                    color: PColors.primaryTextColor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              // ---------Image --------
              SizedBox(height: device.size.height * 0.5),
              // button lets go!
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: PColors.yellow),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    PTexts.letsGo,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  PTexts.dontHaveAnAccount,
                  style: TextStyle(
                    color: PColors.primaryTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    const Text(
                      PTexts.singInHere,
                      style: TextStyle(
                        color: PColors.primaryTextColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 2,
                      color: PColors.primaryTextColor,
                      width: 180,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
