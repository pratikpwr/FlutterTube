import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:stepupdev/models/favorite_model.dart';
import '../models/video_model.dart';
import '../screens/video_screen.dart';

class VideoListTile extends StatelessWidget {
  // final Channel channel;
  final Video video;

  VideoListTile(this.video);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => VideoScreen(id: video.id!),
              ),
            ),
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          elevation: 7,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    video.thumbnailUrl!,
                    fit: BoxFit.cover,
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: GestureDetector(
                      onTap: () {
                        Provider.of<Favorite>(context, listen: false)
                            .addOrRemove(video);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black45),
                        child: Consumer<Video>(
                          builder: (context, video, child) {
                            return Icon(
                              video.isFavorite == false
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: Colors.white,
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  video.title!,
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              )
            ],
          ),
        ));
  }
}
