// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Just4UCard extends StatelessWidget {
  const Just4UCard({
    Key? key,
    required this.title,
    required this.price,
    required this.desc,
  }) : super(key: key);
  final String title;
  final String price;
  final String desc;
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline6!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
        );
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: textStyle,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      price,
                      style: textStyle,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(desc),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: Theme.of(context).colorScheme.secondary,
                ),
                child: const Text("Stay Connected"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
