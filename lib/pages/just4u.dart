import 'package:flutter/material.dart';
import 'package:mymtn/widgets/just4u/card.dart';

class Just4U extends StatefulWidget {
  const Just4U({Key? key}) : super(key: key);

  @override
  State<Just4U> createState() => _Just4UState();
}

class _Just4UState extends State<Just4U> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Exclusive offers Just4U",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const Just4UCard(
              title: "Ashantifest-2.9GB",
              price: "GHc25.0",
              desc:
                  "Buy the 2.9GB of Data Bundle for just GHc25 and get an extra 500MB bonus valid for 30 days",
            ),
            const Just4UCard(
              title: "1000MB 30-day pack",
              price: "GHc8.3",
              desc: "By the 1000MB 30-day pack at GHc8.3",
            ),
            const Just4UCard(
              title: "150MB 7-day pack",
              price: "GHc1.5",
              desc: "By the 150MB 7-day pack at GHc1.5",
            ),
            const Just4UCard(
              title: "2.5GB 3-day pack",
              price: "GHc12.0",
              desc: "By the 2.5GB 3-day pact at GHc12",
            ),
          ],
        ),
      ),
    );
  }
}
