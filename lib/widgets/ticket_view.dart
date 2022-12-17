import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> singleItem;

  const TicketView({super.key, required this.singleItem});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    singleItem['from']['code'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  const ThickContainer(
                    color: Colors.white,
                  ),
                  Expanded(
                      child: Stack(
                    children: [
                      SizedBox(
                          height: 24,
                          child: LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraints) {
                            // print("This is constraints ${constraints.maxWidth}");
                            return Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              direction: Axis.horizontal,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white)),
                                      )),
                            );
                          })),
                      Center(
                        child: Transform.rotate(
                          angle: math.pi / 2,
                          child: const Icon(Icons.local_airport_rounded,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  )),
                  const ThickContainer(
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Text(
                    singleItem['to']['code'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  )
                ],
              ),
              const Gap(2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(singleItem['from']['name'],
                        style: Styles.headLineStyle4
                            .copyWith(color: Colors.white)),
                  ),
                  const Spacer(),
                  Text(
                    singleItem['flying_time'],
                    style: Styles.headLineStyle4.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 100,
                    child: Text(singleItem['to']['name'],
                        textAlign: TextAlign.end,
                        style: Styles.headLineStyle4
                            .copyWith(color: Colors.white)),
                  ),
                ],
              ),
            ]),
          ),
          Container(
            color: Styles.orangeColor,
            child: Row(
              children: [
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                )));
                  }),
                )),
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      singleItem['date'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      "Date",
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      singleItem['departure_time'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      "Depature Time",
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      singleItem["number"].toString(),
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      "Number",
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
