import 'package:flutter/material.dart';
import 'package:flutter_basics/base/res/styles/app_styles.dart';

import '../../res/media.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          width: size.width * 0.42,
          height: 435,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 2,
                  blurRadius: 1,
                )
              ]),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AppMedia.planeSit,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "20% discount on the early booking of this flight, Don't Miss it",
                style: AppStyles.textStyle,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: size.width * 0.44,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xFF3B8B88),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survery",
                        style: AppStyles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Take the survery about our services and get a discount",
                        style: AppStyles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -50,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: const Color(0xFF189999),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style: AppStyles.headLineStyle2.copyWith(
                      color: Colors.white,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
