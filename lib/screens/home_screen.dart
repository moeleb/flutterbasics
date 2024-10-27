import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/base/res/styles/app_styles.dart';
import 'package:flutter_basics/base/utils/app_json.dart';
import 'package:flutter_basics/base/widgets/app_double_text.dart';
import 'package:flutter_basics/base/widgets/ticket_view.dart';
import 'package:flutter_basics/screens/widgets/hotels.dart';

import '../res/media.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning", style: AppStyles.headLineStyle3),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Book Tickets",
                            style: AppStyles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(AppMedia.logo),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    child: const Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text(" Search"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppDoubleText(
                      bigText: 'Upcoming Flights',
                      smallText: 'View All',
                      func: () => Navigator.pushNamed(context, "all_tickets")),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .map((singleTicket) => TicketView(
                                ticketList: singleTicket,
                              ))
                          .toList(),
                    ),
                  ),
                  AppDoubleText(
                      bigText: 'Hotels',
                      smallText: 'View All',
                      func: () => Navigator.pushNamed(context, "all_tickets")),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .take(2)
                          .map((singleHotel) => Hotels(
                                hotel: singleHotel,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
