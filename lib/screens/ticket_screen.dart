import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_info_list.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/line_space_widget.dart';
import 'package:ticket_app/widgets/ticket_view.dart';
import 'dart:math' as math;
import '../utils/app_layout.dart';
import '../widgets/tab_widget.dart';
import '../widgets/thick_container.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgyColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHight(20)),
            children: [
              Gap(AppLayout.getHight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getHight(35)),
              ),
              Gap(AppLayout.getHight(20)),
              const TabWidget(leftText: "Upcoming", rightText: "Previous"),
              Gap(AppLayout.getHight(20)),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.grey.shade200)
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "NYC",
                                style: Styles.headLineStyle3,
                              ),
                              const Spacer(),
                              ThickContainer(color: Colors.blue[700]),
                              Expanded(
                                  child: Stack(
                                children: [
                                  SizedBox(
                                      height: 24,
                                      child: LayoutBuilder(builder:
                                          (BuildContext context,
                                              BoxConstraints constraints) {
                                        // print("This is constraints ${constraints.maxWidth}");
                                        return Flex(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          direction: Axis.horizontal,
                                          children: List.generate(
                                              (constraints.constrainWidth() / 6)
                                                  .floor(),
                                              (index) => SizedBox(
                                                    width: 3,
                                                    height: 1,
                                                    child: DecoratedBox(
                                                        decoration:
                                                            BoxDecoration(
                                                                color:
                                                                    Colors.blue[
                                                                        700])),
                                                  )),
                                        );
                                      })),
                                  Center(
                                    child: Transform.rotate(
                                      angle: math.pi / 2,
                                      child: Icon(Icons.local_airport_rounded,
                                          color: Colors.blue[700]),
                                    ),
                                  ),
                                ],
                              )),
                              ThickContainer(color: Colors.blue[700]),
                              const Spacer(),
                              Text(
                                "LDN",
                                style: Styles.headLineStyle3,
                              )
                            ],
                          ),
                          const Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Text("New-York",
                                    style: Styles.headLineStyle4),
                              ),
                              const Spacer(),
                              Text(
                                "8H 30M",
                                style: Styles.headLineStyle3
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 100,
                                child: Text("London",
                                    textAlign: TextAlign.end,
                                    style: Styles.headLineStyle4),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const LineSpaceWidget(),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1 May",
                                style: Styles.headLineStyle3
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const Gap(5),
                              Text(
                                "Date",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "08:00 AM",
                                style: Styles.headLineStyle3
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const Gap(5),
                              Text(
                                "Depature Time",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "23",
                                style: Styles.headLineStyle3
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const Gap(5),
                              Text(
                                "Number",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const LineSpaceWidget(),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Flutter Dash",
                                  style: Styles.headLineStyle3
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Gap(5),
                                Text(
                                  "Passenger",
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "5221 478566",
                                  style: Styles.headLineStyle3
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Gap(5),
                                Text(
                                  "Passport",
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                          ]),
                    ),
                    const LineSpaceWidget(),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "0055 444 77147",
                                  style: Styles.headLineStyle3
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Gap(5),
                                Text(
                                  "Number of E-ticket",
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "B2SG28",
                                  style: Styles.headLineStyle3
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Gap(5),
                                Text(
                                  "Booking code",
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                          ]),
                    ),
                    const LineSpaceWidget(),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.payment_rounded),
                                    Text(
                                      "0055 444 77147",
                                      style: Styles.headLineStyle3.copyWith(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Gap(5),
                                Text(
                                  "Payment method",
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$249.99",
                                  style: Styles.headLineStyle3
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Gap(5),
                                Text(
                                  "Price",
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                          ]),
                    ),
                    const Gap(20),
                    Container(
                      // padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'https://github.com/Jamshidbekdev',
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              FittedBox(
                  child: Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: TicketView(singleItem: ticketList[0])))
            ],
          ),
          Positioned(
            top: 295,
            left: 11,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            top: 295,
            right: 11,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
