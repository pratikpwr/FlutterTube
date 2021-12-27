import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stepupdev/models/tech_model.dart';
import 'package:stepupdev/screens/youtubers_screen.dart';

class TechsTile extends StatelessWidget {
  const TechsTile({Key? key, required this.tech}) : super(key: key);
  final TechModel tech;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return YouTubersScreen(tech);
          }));
        },
        child: Card(
          elevation: 7,
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              //color: MyColors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    tech.imageUrl,
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    tech.title,
                    style: GoogleFonts.mukta(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              )),
        ));
  }
}
