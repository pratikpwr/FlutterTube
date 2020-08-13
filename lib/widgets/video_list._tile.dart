import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/channel_models.dart';
import '../models/video_model.dart';
import '../screens/video_screen.dart';

class VideoListTile extends StatelessWidget {
  final Channel channel;
  final Video video;

  VideoListTile(this.channel, this.video);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => VideoScreen(id: video.id),
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
                    video.thumbnailUrl,
                    fit: BoxFit.cover,
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                  ),
                 /*Container(
                    decoration:BoxDecoration(
                      color: Colors.black45
                    ),
                    child: Text(video.duration , style: GoogleFonts.poppins(color: Colors.white),),
                  )*/
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  video.title,
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              )
            ],
          ),
        ));
  }
}
