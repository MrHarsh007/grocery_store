import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class CouponCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> details;

  CouponCard({
    required this.title,
    required this.description,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppFonts.getProductTitleStyle(context)
                .copyWith(color: kLightGreen),
          ),
          const SizedBox(height: 2),
          Text(description,
              style: AppFonts.getProductDescriptionStyle(context)),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: DashedDivider(
              color: kLightGreen,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: details
                .map((detail) => Row(
                      children: [
                        const Icon(Icons.fiber_manual_record, size: 6),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            detail,
                            style: AppFonts.getProductDescriptionStyle(context),
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class DashedDivider extends StatelessWidget {
  final double height;
  final Color color;
  final double dashWidth;
  final double dashSpace;

  const DashedDivider({
    this.height = 1,
    this.color = Colors.black,
    this.dashWidth = 5,
    this.dashSpace = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final boxWidth = constraints.constrainWidth();
          final dashCount = (boxWidth / (dashWidth + dashSpace)).floor();
          return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: height,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
