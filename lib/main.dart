import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/screens/youtubers_screen.dart';
import './colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterTube',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primaryColor: Colors.blue,
         // canvasColor: MyColors.black,
         // cardColor: MyColors.grey,
          textTheme: TextTheme(
              headline6: GoogleFonts.poppins(
                  color: MyColors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold))),
      home: YouTubersScreen(),
    );
  }
}

