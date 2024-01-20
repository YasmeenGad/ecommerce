import 'package:flutter/material.dart';

class CustomTxtTitleAuth extends StatelessWidget {
  final String txt;

  const CustomTxtTitleAuth({required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
