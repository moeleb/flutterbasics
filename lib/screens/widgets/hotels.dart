import 'package:flutter/material.dart';
import 'package:flutter_basics/base/res/styles/app_styles.dart';
import 'package:flutter_basics/res/media.dart';

class Hotels extends StatelessWidget {
  final Map<String,dynamic> hotel ;
  const Hotels({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 350,
      margin: EdgeInsets.only(right:16),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel["image"]}",
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              hotel["place"],
              style: AppStyles.headLineStyle1.copyWith(
                color: AppStyles.kakiColor
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "\$ ${hotel['price']}/night",
              style: AppStyles.headLineStyle1.copyWith(
                color: AppStyles.kakiColor
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              hotel["destination"],
              style: AppStyles.headLineStyle1.copyWith(
                color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
