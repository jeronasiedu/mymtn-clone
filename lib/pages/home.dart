import 'package:flutter/material.dart';
import 'package:mymtn/widgets/broadband_card.dart';
import 'package:mymtn/widgets/greetings.dart';
import 'package:mymtn/widgets/header_card.dart';
import 'package:mymtn/widgets/info_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final fontStyle = Theme.of(context).textTheme.headline5!.copyWith(
          color: Colors.black,
        );
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Greeting(fontStyle: fontStyle),
          const HeaderCard(),
          const InfoCard(
            balance: "2.2",
            bonus: "0.00",
            icon: "assets/phone.svg",
            type: "Airtime",
            unit: "GHc",
          ),
          const InfoCard(
            balance: "922.50",
            unit: "MB",
            bonus: "1.28",
            icon: "assets/data.svg",
            type: "Data",
          ),
          const InfoCard(
            balance: "1270",
            bonus: "0",
            icon: "assets/sms.svg",
            type: "SMS",
            unit: "SMS",
          ),
          const InfoCard(
            type: "Voice",
            balance: "397",
            unit: "Minutes",
            bonus: "20.00",
            icon: "assets/voice.svg",
          ),
          const BroadBand()
        ],
      ),
    );
  }
}
