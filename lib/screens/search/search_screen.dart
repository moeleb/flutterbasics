import 'package:flutter/material.dart';
import 'package:flutter_basics/base/res/styles/app_styles.dart';
import 'package:flutter_basics/base/widgets/app_double_text.dart';
import 'package:flutter_basics/screens/search_widgets/app_ticket_tabs.dart';
import 'package:flutter_basics/screens/search_widgets/find_tickets.dart';

import '../search_widgets/app_text_icon.dart';
import '../search_widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "What are\n you looking for?",
            style: AppStyles.headLineStyle1.copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          const AppTicketTabs(firstTab: "All Tickets",secondTab: "Hotels",),
          SizedBox(
            height: 25,
          ),
          const AppTextIcon(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(
            height: 20,
          ),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(),
          const SizedBox(
            height: 25,
          ),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View All',
            func: () => Navigator.pushNamed(context, "all_tickets"),
          ),
          const SizedBox(
            height: 15,
          ),
          TicketPromotion()

        ],
      ),
    );
  }
}
