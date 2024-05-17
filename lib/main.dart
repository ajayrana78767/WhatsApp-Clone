import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/screens/splash_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:primaryColor),
        useMaterial3: true,
         scaffoldBackgroundColor: whiteColor,
         fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      home: const SplashScreen(),
    );
  }
}


