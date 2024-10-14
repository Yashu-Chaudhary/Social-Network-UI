import 'dart:async';

import 'package:flutter/material.dart';

class VerticalNavTile extends StatefulWidget {
  final IconData icon;
  final String text;
  final Widget? nextScreen;
  const VerticalNavTile({
    super.key,
    required this.icon,
    required this.text,
    this.nextScreen,
  });

  @override
  State<VerticalNavTile> createState() => _VerticalNavTileState();
}

class _VerticalNavTileState extends State<VerticalNavTile> {
  Color containerColor = Colors.transparent;
  bool isClicked = false;

  void colorChange() {
    if (!isClicked) {
      setState(() {
        containerColor = Colors.white.withOpacity(0.2);
        isClicked = true;
      });
    }
    Timer(const Duration(milliseconds: 200), () {
      setState(() {
        containerColor = Colors.transparent;
        isClicked = false;
      });
    });
    Future.delayed(const Duration(milliseconds: 100), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => widget.nextScreen!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: colorChange,
      child: AnimatedContainer(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(color: containerColor),
        duration: const Duration(milliseconds: 50),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Icon(
              widget.icon,
              color: Colors.white,
              size: 35,
            ),
            const SizedBox(width: 20),
            Text(
              widget.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
