import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final int width ;
  const AppLayoutBuilderWidget({super.key, required this.randomDivider, this.width=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => const SizedBox(
              width: 3,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
