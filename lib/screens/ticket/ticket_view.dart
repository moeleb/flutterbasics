import 'package:flutter/material.dart';
import 'package:flutter_basics/base/res/styles/app_styles.dart';
import 'package:flutter_basics/base/utils/app_json.dart';
import 'package:flutter_basics/base/widgets/ticket_view.dart';
import 'package:flutter_basics/screens/search_widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headLineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: 'Upcoming',
            secondTab: 'Previous',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: TicketView(ticketList: ticketList[0],),
          ),
        ],
      ),
    );
  }
}
