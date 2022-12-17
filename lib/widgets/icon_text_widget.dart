import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const IconText({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF),),
          const Gap(10),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
