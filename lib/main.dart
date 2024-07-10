import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webiste/constants.dart';
import 'package:portfolio_webiste/screens/Home/home_screen.dart';
import 'package:portfolio_webiste/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor:Colors.white)
            .copyWith(
          bodySmall:const TextStyle(color: bodyTextColor),

          bodyLarge:const TextStyle(color: bodyTextColor),
        )
      ),
      home: const HomeScreen(),
    );
  }
}
