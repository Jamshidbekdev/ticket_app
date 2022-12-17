import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/icon_text_widget.dart';
import 'package:ticket_app/widgets/tab_widget.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgyColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHight(20)),
        children: [
          Gap(AppLayout.getHight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getHight(35)),
          ),
          Gap(AppLayout.getHight(20)),
          const TabWidget(leftText: "Airline tickets", rightText: "Hotels"),
          const Gap(25),
          const IconText(
            text: 'Departure',
            icon: Icons.flight_takeoff_rounded,
          ),
          const Gap(15),
          const IconText(
            text: 'Arrival',
            icon: Icons.flight_land_rounded,
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Styles.buttonColor,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              'Find tickets',
              style: Styles.textStyle.copyWith(color: Colors.white),
            )),
          ),
          const Gap(40),
          const AppDoubleText(
              firstText: "Upcoming Flights", secondText: "View all"),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 405,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1),
                        ]),
                    width: size.width * 0.44,
                    child: Column(children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/cosmonaut.jpg"))),
                      ),
                      const Gap(20),
                      Text(
                        "20% discount on the early booking of this flight. Don't miss.",
                        style: Styles.textStyle.copyWith(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ]),
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 190,
                        padding: const EdgeInsets.all(15),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 1,
                                  spreadRadius: 1),
                            ]),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.textStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Gap(10),
                              Text(
                                  "Take the survey about our services and get discount",
                                  style: Styles.textStyle.copyWith(
                                      color: Colors.white, fontSize: 18))
                            ]),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Container(
                    height: 200,
                    padding: const EdgeInsets.all(15),
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                        color: Colors.orange.shade800,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1),
                        ]),
                    child: Column(children: [
                      Text(
                        "Take love",
                        textAlign: TextAlign.center,
                        style: Styles.headLineStyle2.copyWith(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Gap(10),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: '😍', style: TextStyle(fontSize: 28)),
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 42)),
                        TextSpan(text: '😘', style: TextStyle(fontSize: 28)),
                      ]))
                    ]),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
