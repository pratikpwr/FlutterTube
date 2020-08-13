import 'package:flutter/material.dart';
import 'package:learn_flutter/colors.dart';
import '../widgets/youtube_grid_tile.dart';

class YouTubersScreen extends StatefulWidget {
  @override
  _YouTubersScreenState createState() => _YouTubersScreenState();
}

class _YouTubersScreenState extends State<YouTubersScreen> {
  final List<String> youtubeChannels = [
    'UCFTM1FGjZSkoSPDZgtbp7hA',
    'UCSIvrn68cUk8CS8MbtBmBkA',
    'UC6Dy0rQ6zDnQuHQ1EeErGUA',
    'UCsPdgUIoOBTBI1UmulW1pdw',
    'UCDop5l09jz_ExPaQwGL-RrQ',
    'UCQ00Ywz-ygK-yHzKluEsABA',
    'UCywpR6E1lpk66CHhGziz8Bg',
    'UC2d0BYlqQCdF9lJfydl_02Q'
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
