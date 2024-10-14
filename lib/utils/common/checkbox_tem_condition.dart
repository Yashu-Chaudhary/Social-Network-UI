import 'package:flutter/material.dart';
import 'package:socail_network/utils/constants/string_constants.dart';

class CheckBoxTermCondition extends StatefulWidget {
  const CheckBoxTermCondition({super.key});

  @override
  State<CheckBoxTermCondition> createState() => _CheckBoxTermConditionState();
}

class _CheckBoxTermConditionState extends State<CheckBoxTermCondition> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false;
              });
            }),
        const Text(
          PTexts.iAgreeWithConditons,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
