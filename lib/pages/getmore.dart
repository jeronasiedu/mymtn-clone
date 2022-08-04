import 'package:flutter/material.dart';
import 'package:mymtn/widgets/getmore/getmore_card.dart';

class GetMore extends StatefulWidget {
  const GetMore({Key? key}) : super(key: key);

  @override
  State<GetMore> createState() => _GetMoreState();
}

class _GetMoreState extends State<GetMore> {
  List getMoreItems = [
    {
      "heading": "Ayoba",
      "desc": "A super app that allows free chat and more",
      "image": "assets/ayoba.webp",
    },
    {
      "heading": "Device Insurance",
      "subHeading": "Device Insurance & Coverage",
      "desc": "Insure smartphones against liquid and accidental damage",
      "image": "assets/insurance.png",
    },
    {
      "heading": "Game+",
      "subHeading": "Games Center",
      "desc": "Games store with variety of games for Android users",
      "image": "assets/game+.jpeg",
    },
    {
      "heading": "HottSeat",
      "desc": "Trivia & Prizes",
      "image": "assets/hottseat.png",
    },
    {
      "heading": "Iroko TV",
      "subHeading": "Entertainment",
      "desc":
          "Video streaming app for your Nigerian, Ghanaian and Korean series and movies",
      "image": "assets/irokotv.png",
    },
    {
      "heading": "MoMo",
      "desc": "Perform transactions and pay bills with MoMo",
      "image": "assets/momo.png",
    },
    {
      "heading": "MoMo Pay on Google Play",
      "subHeading": "Pay for Apps & Subscriptions",
      "desc": "Pay for Google Apps with MoMo",
      "image": "assets/mtnpay-googleplay.jpg",
    },
  ];
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
            Column(
              children: List.generate(getMoreItems.length, (index) {
                return GetMoreCard(
                  Heading: getMoreItems[index]['heading'],
                  desc: getMoreItems[index]['desc'],
                  image: getMoreItems[index]['image'],
                  subHeading: getMoreItems[index]['subHeading'],
                );
              }),
            )

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
