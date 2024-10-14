import 'package:flutter/material.dart';

class InterestContainer extends StatelessWidget {
  final String text;
  const InterestContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.only(left: 15,right: 13, top: 6, bottom: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.grey),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w400,fontSize: 20
          ),
        ),
      ),
    );
  }
}
