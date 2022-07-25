// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.type,
    required this.balance,
    required this.bonus,
    required this.icon,
    required this.unit,
  }) : super(key: key);
  final amountStyle = const TextStyle(
    color: Color.fromARGB(255, 10, 105, 149),
    fontSize: 23,
    fontWeight: FontWeight.bold,
  );
  final String type;
  final String balance;
  final String bonus;
  final String icon;
  final String unit;

  String textStructure() {
    if (type.toLowerCase() == 'airtime') {
      return "$unit$balance";
    } else {
      return "$balance$unit";
    }
  }

  final String minsText = "Mins";
  String bonusStructure() {
    if (type.toLowerCase() == 'airtime') {
      return "$unit$bonus";
    } else if (type.toLowerCase() == 'voice') {
      return '$bonus$minsText';
    } else {
      return "$bonus$unit";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 85,
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    type,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SvgPicture.asset(
                    icon,
                    width: 40,
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textStructure(),
                    style: amountStyle,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Bonus",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        bonusStructure(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
