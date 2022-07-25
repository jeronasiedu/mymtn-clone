import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({
    Key? key,
    required this.fontStyle,
  }) : super(key: key);

  final TextStyle fontStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Y'ello",
          style: Theme.of(context).textTheme.headline5!.copyWith(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Text("Jeron Asiedu", style: fontStyle),
      ],
    );
  }
}
