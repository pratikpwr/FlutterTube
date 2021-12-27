import 'package:flutter/material.dart';
import 'package:stepupdev/models/tech_model.dart';
import '../widgets/youtube_grid_tile.dart';

class YouTubersScreen extends StatefulWidget {
  final TechModel tech;

  YouTubersScreen(this.tech);

  @override
  _YouTubersScreenState createState() => _YouTubersScreenState();
}

class _YouTubersScreenState extends State<YouTubersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tech.title),
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
                  itemCount: widget.tech.channels!.length,
                  itemBuilder: (context, index) {
                    return YoutubeGridTile(widget.tech.channels![index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
