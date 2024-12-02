import 'package:flutter/material.dart';
import 'package:socail_network/utils/common/circular_heading_with_body_text.dart';
import 'package:socail_network/utils/constants/color_constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: PColors.secondary,
      body: CircularHeaderWithBodyItems(
        headingText: 'Top Contacts',
        child: SizedBox(
          height: device.size.height * 0.93,
          width: device.size.width,
          child: Stack(
            children: [
              Positioned(
                  left: -10,
                  bottom: device.size.height * 0.3,
                  height: 100,
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                        color: PColors.primary,
                        borderRadius: BorderRadius.circular(100)),
                  )),
              Positioned(
                right: -10,
                top: device.size.height * 0.2,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: PColors.yellow,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),

              // ---------------search option with products---------------
              Center(
                child: Container(
                  height: device.size.height * 0.85,
                  width: device.size.width * 0.9,
                  decoration: BoxDecoration(
                    color: PColors.milkWhite,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 12, top: 12, right: 12),
                    child: Column(
                      children: [
                        TextField(
                           
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: PColors.greyIcon,
                              size: 30,
                            ),
                            hintText: 'Search',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        // -----------Recommendations--------------
                        Row(
                          children: [
                            Text('Recommendatins', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
