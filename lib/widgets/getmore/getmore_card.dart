// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GetMoreCard extends StatelessWidget {
  const GetMoreCard({
    Key? key,
    required this.Heading,
    this.subHeading,
    required this.desc,
    required this.image,
  }) : super(key: key);
  final String Heading;
  final String? subHeading;
  final String desc;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            // padding: const EdgeInsets.all(10),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Heading,
                    style: Theme.of(context).textTheme.headline6!.apply(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeightDelta: 2,
                        ),
                  ),
                  if (subHeading != null)
                    Text(
                      subHeading!,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  Text(
                    desc,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).hintColor,
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
