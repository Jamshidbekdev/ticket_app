// ignore_for_file: unnecessary_const

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_info_list.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/double_text_widget.dart';
import 'package:ticket_app/widgets/hotel_view.dart';
import 'package:ticket_app/widgets/ticket_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgyColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: Styles.headLineStyle3),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/cosmonaut.jpg"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: const [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      // ignore: prefer_const_constructors
                      Text("Search")
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleText(firstText: "Upcoming Flights", secondText: "View all"),
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
                children:ticketList.map((item) => TicketView(singleItem: item,)).toList()),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {
                    // ignore: avoid_print
                    print('Pressed View all button');
                  },
                  child: Text(
                    "View all",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          const Gap(15),
          // ignore: prefer_const_constructors
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              /* children: List.generate(
              //   hotelList.length,
              //   (index) => HotelView(
              //     place: hotelList[index]['place'],
              //     destination: hotelList[index]['destination'],
              //     price: hotelList[index]['price'],
              //   ),
               ),*/
              children: hotelList
                  .map(
                    (item) => HotelView(
                      place: item['place'],
                      destination: item['destination'],
                      price: item['price'],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
