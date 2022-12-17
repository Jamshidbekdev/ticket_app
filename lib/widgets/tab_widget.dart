import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TabWidget extends StatelessWidget {
  final String leftText;
  final String rightText;

  const TabWidget({required this.leftText, required this.rightText, super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHight(50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHight(50)),
                    ),
                    color: Colors.white),
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHight(7),
                ),
                child: Center(
                  child: Text(leftText),
                ),
              ),
              Container(
                width: size.width * .44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHight(50)),
                    ),
                    color: Colors.transparent),
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHight(7),
                ),
                child: Center(
                  child: Text(rightText),
                ),
              ),
            ]),
      ),
    );
  }
}
