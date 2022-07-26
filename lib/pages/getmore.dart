import 'package:flutter/material.dart';
import 'package:mymtn/widgets/getmore/getmore_card.dart';

class GetMore extends StatefulWidget {
  const GetMore({Key? key}) : super(key: key);

  @override
  State<GetMore> createState() => _GetMoreState();
}

class _GetMoreState extends State<GetMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Get More",
              style: Theme.of(context).textTheme.headline6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Get access to other great products and resources",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const GetMoreCard(
              Heading: "Ayoba",
              desc: "A super app that allows free chat and more",
              image: "assets/ayoba.webp",
            ),
            // const GetMoreCard(
            //   Heading: "Broadband",
            //   desc: "Fibre & Turbonet",

            // ),
            const GetMoreCard(
              Heading: "Device Insurance",
              subHeading: "Device Insurance & Coverage",
              desc: "Insure smartphones against liquid and accidental damage",
              image: "assets/insurance.png",
            ),
            const GetMoreCard(
              Heading: "Game+",
              subHeading: "Games Center",
              desc: "Games store with variety of games for Android users",
              image: "assets/game+.jpeg",
            ),
            const GetMoreCard(
              Heading: "HottSeat",
              desc: "Trivia & Prizes",
              image: "assets/hottseat.png",
            ),
            const GetMoreCard(
              Heading: "Iroko TV",
              subHeading: "Entertainment",
              desc:
                  "Video streaming app for your Nigerian, Ghanaian and Korean series and movies",
              image: "assets/irokotv.png",
            ),
            const GetMoreCard(
              Heading: "MoMo",
              desc: "Perform transactions and pay bills with MoMo",
              image: "assets/momo.png",
            ),
            const GetMoreCard(
              Heading: "MoMo Pay on Google Play",
              subHeading: "Pay for Apps & Subscriptions",
              desc: "Pay for Google Apps with MoMo",
              image: "assets/mtnpay-googleplay.jpg",
            ),
            // const GetMoreCard(
            //   Heading: "Nazara Games",
            //   subHeading: "Games and More",
            //   desc:
            //       "Get unlimited access to puzzle, racing, sports and strategy games",
            // ),
            // const GetMoreCard(
            //   Heading: "Showmax",
            //   desc: "Movies & More",
            // ),
            // const GetMoreCard(
            //   Heading: "Vuclip Games",
            //   subHeading: "Games and More",
            //   desc: "Android and HTML5 games to entertain customers",
            // ),
            // const GetMoreCard(
            //   Heading: "2CTV",
            //   subHeading: "Local TV Station",
            //   desc:
            //       "Live TV service with a catalogue of both local and international TV channels",
            // ),
          ],
        ),
      ),
    );
  }
}
