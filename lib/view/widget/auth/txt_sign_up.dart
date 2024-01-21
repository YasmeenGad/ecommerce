import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTxtAuth extends StatelessWidget {
  final String txt1;
  final String txt2;
  final void Function()? onTap;

  const CustomTxtAuth(
      {super.key, required this.txt1, required this.txt2, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(txt1),
        InkWell(
          onTap: onTap,
          child: Text(
            txt2,
            style: const TextStyle(
                color: Clrs.primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
