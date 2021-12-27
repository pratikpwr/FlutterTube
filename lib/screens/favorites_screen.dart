import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepupdev/models/favorite_model.dart';
import 'package:stepupdev/models/video_model.dart';
import 'package:stepupdev/widgets/video_list._tile.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Video> videos = Provider.of<Favorite>(context).videos;
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: videos.isEmpty
          ? Center(
              child: Text('No Favorites'),
            )
          : ListView.builder(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                return VideoListTile(videos[index]);
              }),
    );
  }
}
