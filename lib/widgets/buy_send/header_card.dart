import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyHeaderCard extends StatelessWidget {
  const BuyHeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/data.svg',
            width: 35,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Happy Eid Adha!",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Enjoy 2.5GB of data for only GHc 10 on holidays and on special days valid for 24hours",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Colors.black45,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
