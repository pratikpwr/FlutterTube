import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/models/favorite_model.dart';
import 'package:learn_flutter/models/video_model.dart';
import 'package:provider/provider.dart';
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
        ChangeNotifierProvider<Video>(create: (ctx) => Video(),)
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
                    fontSize: 32,
                    fontWeight: FontWeight.bold))),
        home: YouTubersScreen(),
      ),
    );
  }
}

