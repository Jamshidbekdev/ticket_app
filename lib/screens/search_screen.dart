import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';

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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHight(50)),
              color: const Color(0xFFF4F6FD),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHight(50)),
                      ),
                      color: Colors.white),
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHight(7),
                  ),
                  child: const Center(
                    child: Text('Airline tickets'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHight(50)),
                      ),
                      color: Colors.white),
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHight(7),
                  ),
                  child: const Center(
                    child: Text('Airline tickets'),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
