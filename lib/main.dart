import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:stepupdev/models/favorite_model.dart';
import 'package:stepupdev/models/tech_model.dart';
import 'package:stepupdev/models/video_model.dart';
import 'package:stepupdev/screens/techs_screen.dart';
import './screens/youtubers_screen.dart';
import './colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Favorite>(create: (ctx) => Favorite()),
        ChangeNotifierProvider<Video>(
          create: (ctx) => Video(),
        )
      ],
      child: MaterialApp(
        title: 'FlutterTube',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.blue,
            // canvasColor: MyColors.black,
            // cardColor: MyColors.grey,
            textTheme: TextTheme(
                headline6: GoogleFonts.poppins(
                    color: MyColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold))),
        home: TechScreen(),
      ),
    );
  }
}
