import 'package:flutter/material.dart';
import 'package:socail_network/screens/home_page/homepage.dart';
import 'package:socail_network/screens/options_page/options_page.dart';
import 'package:socail_network/screens/profile/profile.dart';
import 'package:socail_network/screens/favourite_page/favourite_page.dart';
import 'package:socail_network/screens/search_screen/search_screen.dart';
import 'package:socail_network/utils/constants/color_constants.dart';

class BottomNavigatationBar extends StatefulWidget {
  const BottomNavigatationBar({super.key});

  @override
  State<BottomNavigatationBar> createState() => _BottomNavigatationBarState();
}

class _BottomNavigatationBarState extends State<BottomNavigatationBar> {
  int choosedIndex = 2;
  static final List<Widget> pages = [
    const SearchPage(),
    const FavouritePage(),
    const ProfilePage(),
    const HomePage(),
    const OptionsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    dynamic device = MediaQuery.of(context);

    return Scaffold(
      body: pages[choosedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        height: device.size.height * 0.07,
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    choosedIndex = 0;
                  });
                },
                icon: const Icon(
                  Icons.search_outlined,
                  color: PColors.greyIcon,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    choosedIndex = 1;
                  });
                },
                icon: const Icon(
                  Icons.favorite_border,
                  color: PColors.greyIcon,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    choosedIndex = 2;
                  });
                },
                icon: const Icon(
                  Icons.person_outline,
                  color: PColors.primary,
                  size: 40,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    choosedIndex = 3;
                  });
                },
                icon: const Icon(
                  Icons.home,
                  color: PColors.greyIcon,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    choosedIndex = 4;
                  });
                },
                icon: const Icon(
                  Icons.menu,
                  color: PColors.greyIcon,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }
}
