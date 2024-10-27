import 'package:flutter/material.dart';
import 'package:flutter_basics/base/widgets/app_layout_builder_widget.dart';
import 'package:flutter_basics/base/widgets/big_dot.dart';
import 'package:flutter_basics/base/widgets/text_style_fourth.dart';
import 'package:flutter_basics/base/widgets/text_style_third.dart';

import '../res/styles/app_styles.dart';
import 'big_circle_dot.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticketList ;
  final bool wholeScreen ;
  final bool ?isColor;
  const TicketView({super.key, required this.ticketList,  this.wholeScreen = false, this.isColor = null});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 190,
      child: Container(
        margin:  EdgeInsets.only(right: wholeScreen? 0 : 16),
        child: Column(
          children: [
            // blue part of ticket
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: isColor==null? AppStyles.ticketBlue :AppStyles.ticketColor ,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destination with icons
                  Row(
                    children: [
                      TextStyleThird(text: ticketList["from"]["code"]),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 7,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticketList["to"]["code"])
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                       SizedBox(
                          width: 100, child: TextStyleFourth(text: ticketList["from"]["name"])),
                      Expanded(child: Container()),
                       TextStyleThird(text: ticketList["flying_time"]),
                      Expanded(child: Container()),
                       SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticketList["to"]["name"],
                            align: TextAlign.end,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            // mid
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircleDot(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 12,
                    width: 6,
                  )),
                  BigCircleDot(
                    isRight: true,
                  ),
                ],
              ),
            ),
            // orange part of ticket
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destination with icons
                  Row(
                    children: [
                       TextStyleThird(text: ticketList["date"]),
                      Expanded(child: Container()),
                       TextStyleThird(text: ticketList["departure_time"]),
                      Expanded(child: Container()),
                       TextStyleThird(text: ticketList["number"].toString()),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const TextStyleThird(text: "Date"),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "Departure Time"),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "Number"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
