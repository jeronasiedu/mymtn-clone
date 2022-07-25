import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymtn/root_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMTN CLONE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow.shade700,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow.shade700,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow.shade700,
          primary: Colors.yellow.shade700,
        ).copyWith(
          secondary: const Color.fromARGB(255, 10, 105, 149),
        ),
      ),
      home: const RootApp(),
    );
  }
}
