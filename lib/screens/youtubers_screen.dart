import 'package:flutter/material.dart';
import 'package:stepupdev/screens/favorites_screen.dart';
import '../widgets/youtube_grid_tile.dart';

class YouTubersScreen extends StatefulWidget {
  final List<String> youtubeChannels;

  YouTubersScreen(this.youtubeChannels);

  @override
  _YouTubersScreenState createState() => _YouTubersScreenState();
}

class _YouTubersScreenState extends State<YouTubersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtubers'),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FavoritesScreen();
                }));
              },
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ))
        ],
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
                  itemCount: widget.youtubeChannels.length,
                  itemBuilder: (context, index) {
                    return YoutubeGridTile(widget.youtubeChannels[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
