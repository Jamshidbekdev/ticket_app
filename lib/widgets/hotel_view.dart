import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';

// ignore: must_be_immutable
class HotelView extends StatelessWidget {
  final String place;
  final String destination;
  final int price;

  const HotelView(
      {super.key,
      required this.place,
      required this.destination,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500, blurRadius: 2, spreadRadius: 1)
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/cosmonaut.jpg"))),
        ),
        const Gap(15),
        Text(place,
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
        const Gap(5),
        Text(destination,
            style: Styles.headLineStyle3.copyWith(color: Colors.white)),
        const Gap(8),
        Text(
          "\$${price.toString()}/night",
          style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
        )
      ]),
    );
  }
}
