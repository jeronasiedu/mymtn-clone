// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key? key}) : super(key: key);
  final menuList = [
    {
      "name": "Home",
      "icon": Icons.home,
    },
    {
      "name": "Home",
      "icon": Icons.home,
    },
    {
      "name": "Home",
      "icon": Icons.home,
    },
    {
      "name": "Home",
      "icon": Icons.home,
    },
    {
      "name": "Home",
      "icon": Icons.home,
    },
    {
      "name": "Home",
      "icon": Icons.home,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 8.0,
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                  radius: 30,
                ),
              ),
              Text(
                "Jeron Asiedu Tetteh",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Divider(
                thickness: 1,
              ),
              const MenuItem(text: "Home", icon: Icons.home_outlined),
              const MenuItem(
                text: "Sim Registration",
                icon: Icons.sim_card_alert_outlined,
              ),
              const MenuItem(
                text: "MTN Pulse",
                icon: Icons.card_giftcard_outlined,
              ),
              const MenuItem(
                text: "Bill Summary",
                icon: Icons.summarize_outlined,
              ),
              const MenuItem(
                text: "Bill Pay",
                icon: Icons.attach_money_outlined,
              ),
              const MenuItem(
                text: "Account History",
                icon: Icons.timeline_outlined,
              ),
              const MenuItem(
                text: "Request BroadBand",
                icon: Icons.cell_tower_outlined,
              ),
              const MenuItem(
                text: "Subscriptions",
                icon: Icons.favorite_border_outlined,
              ),
              const MenuItem(
                text: "Profile",
                icon: Icons.face_outlined,
              ),
              const MenuItem(
                text: "Report Momo Fraud",
                icon: Icons.report_problem_outlined,
              ),
              const MenuItem(
                text: "Rate app Experience",
                icon: Icons.thumb_up_outlined,
              ),
              const MenuItem(
                text: "Help",
                icon: Icons.help_center_outlined,
              ),
              const MenuItem(text: "Switch to Consumer MoMo", icon: Icons.home),
              const MenuItem(
                text: "Logout",
                icon: Icons.logout_outlined,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Release v3.15',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
