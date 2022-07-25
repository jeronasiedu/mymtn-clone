import 'package:flutter/material.dart';
import 'package:mymtn/widgets/buy_send/header_card.dart';
import 'package:mymtn/widgets/buy_send/products_card.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({Key? key}) : super(key: key);

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          BuyHeaderCard(),
          Divider(),
          ProductCard(
            heading: "Airtime",
            icon: "assets/airtime.svg",
            subText: "TopUp Airtime: Pay with MoMo",
          ),
          ProductCard(
            heading: "Data",
            icon: "assets/internet.svg",
            subText: "Stay connected to the rest of the world",
          ),
          ProductCard(
            heading: "MTN Pulse",
            icon: "assets/database.svg",
            subText: "Mashup your bundles",
          ),
          ProductCard(
            heading: "Social Bundle",
            icon: "assets/whatsapp.svg",
            subText: "Get Social | Stay connected",
          ),
          ProductCard(
            heading: "Others",
            icon: "assets/plus.svg",
            subText: "Videos, Midnight & Kokrokoo",
          ),
          ProductCard(
            heading: "Just4U",
            icon: "assets/cart.svg",
            subText: "Unique offers for you",
          ),
        ],
      ),
    );
  }
}
