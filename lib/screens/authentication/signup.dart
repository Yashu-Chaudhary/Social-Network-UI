import 'package:flutter/material.dart';
import 'package:socail_network/utils/common/checkbox_tem_condition.dart';
import 'package:socail_network/utils/common/two_cirecle_background.dart';
import 'package:socail_network/utils/constants/color_constants.dart';
import 'package:socail_network/utils/constants/string_constants.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        // background color of the profile screen
        decoration: const BoxDecoration(color: PColors.secondary),
      
        // two circles and container overlap by stack
        child: Stack(
          children: [
            // two circles
            const TwoCircleBackground(),
            // ---------container-------------
            Container(
              height: device.size.height,
              width: device.size.width,
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 70,
                bottom: 60,
              ),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: PColors.milkWhite,
                borderRadius: BorderRadius.circular(20),
              ),
              // --------signin page
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      PTexts.yourName,
                      style: TextStyle(fontSize: 20),
                    ),
                    const TextField(
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: PColors.inputBoxColor,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: PColors.inputBoxColor))),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      PTexts.yourEmail,
                      style: TextStyle(fontSize: 20),
                    ),
                    const TextField(
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: PColors.inputBoxColor,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: PColors.inputBoxColor))),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      PTexts.createPassword,
                      style: TextStyle(fontSize: 20),
                    ),
                    const TextField(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: PColors.yellow),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: PColors.inputBoxColor,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: PColors.inputBoxColor))),
                    ),
                    const SizedBox(height: 40),
                    // -------checkbox and term and condition--------
                    const CheckBoxTermCondition(),
                    const SizedBox(
                      height: 40,
                    ),
      
                    // sign in button
                    Center(
                      child: SizedBox(
                        width: device.size.width * 0.6,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: PColors.yellow,
                          ),
                          child: const Text(
                            PTexts.signUp,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
