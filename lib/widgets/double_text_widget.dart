import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleText extends StatelessWidget {

  final String firstText;
  final String secondText;

  const AppDoubleText(
      {required this.firstText, required this.secondText, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            // ignore: avoid_print
            print('Hello');
          },
          child: Text(
            secondText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
