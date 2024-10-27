import 'package:flutter/material.dart';
import 'package:flutter_basics/base/res/styles/app_styles.dart';
import 'package:flutter_basics/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final VoidCallback func;

  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: func,
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
