import 'package:google_fonts/google_fonts.dart';
import '../models/channel_models.dart';
import 'package:flutter/material.dart';
import '../screens/channel_screen.dart';
import '../services/api_service.dart';

class YoutubeGridTile extends StatefulWidget {
  final String channelId;

  YoutubeGridTile(this.channelId);

  @override
  _YoutubeGridTileState createState() => _YoutubeGridTileState();
}

class _YoutubeGridTileState extends State<YoutubeGridTile> {
  Channel _channel;

  @override
  void initState() {
    super.initState();
    _initChannel();
  }

  _initChannel() async {
    Channel channel =
        await APIService.instance.fetchChannel(channelId: widget.channelId);
    setState(() {
      _channel = channel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
          return ChannelScreen(widget.channelId);
        }));
      },
      child: _channel != null
          ? Card(
        elevation: 7,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                //color: MyColors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      _channel.profilePictureUrl,
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      _channel.title,
                      style: GoogleFonts.mukta(
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
