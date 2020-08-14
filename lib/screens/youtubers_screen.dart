import 'package:flutter/material.dart';
import 'package:learn_flutter/colors.dart';
import '../widgets/youtube_grid_tile.dart';

class YouTubersScreen extends StatefulWidget {
  @override
  _YouTubersScreenState createState() => _YouTubersScreenState();
}

class _YouTubersScreenState extends State<YouTubersScreen> {
  final List<String> youtubeChannels = [
    //flutter official
    'UCwXdFgeE9KYzlDdR7TG9cMw',
    //metechviral
    'UCFTM1FGjZSkoSPDZgtbp7hA',
    //reso coder
    'UCSIvrn68cUk8CS8MbtBmBkA',
    //marcusng
    'UC6Dy0rQ6zDnQuHQ1EeErGUA',
    //sanskar tiwaril
    'UCsPdgUIoOBTBI1UmulW1pdw',
    //the growing devveloper
    'UCDop5l09jz_ExPaQwGL-RrQ',
    //codex
    'UCQ00Ywz-ygK-yHzKluEsABA',
    //coder monk
    'UCywpR6E1lpk66CHhGziz8Bg',
    //filled Stack
    'UC2d0BYlqQCdF9lJfydl_02Q',
    //fun with flutter
    'UCU8Mj6LLoNBXqqeoOD64tFg',
    //techie blossom
    'UC3wqIkiaOUpO6EjJoCwH6_Q',
    //mobile programmer
    'UC5lbdURzjB0irr-FTbjWN1A',
    //Retro portal studio
    'UCW2ATgwtNrsBrE-piE2TIrA',

    //made with flutter
    'UCQheyq1vvmd0RaKv1EDyGfA',
    //afg programmer
    'UCuXm84E6yWF0dIKmwvwc9sQ',
    //the flutter way
    'UCJm7i4g4z7ZGcJA_HKHLCVw',
    //code with andrea
    'UCrTnsT4OYZ53l0QGKqLeD5Q',
    //raja yogan
    'UCjBxAm226XZvgrkO-JyjJgQ',
    //bibek tamsina
    'UCTzRJl-1xd_7c4dK5ldnRYA',
    //pro coach dart
    'UCGF8TZgxizDN3MDSulUP5bg',
    //robby rehmana
    'UCb8Pi4mt745NPfvlVZfQydA',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtubers'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 75,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 4),
                  itemCount: youtubeChannels.length,
                  itemBuilder: (context, index) {
                    return YoutubeGridTile(youtubeChannels[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
