import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final String heading;
  final String subText;
  final String icon;
  const ProductCard(
      {Key? key,
      required this.heading,
      required this.subText,
      required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final accentColor = Theme.of(context).colorScheme.secondary;
    return Container(
      height: 80,
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  heading,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      icon,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      subText,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: double.maxFinite,
            width: 35,
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: const Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
