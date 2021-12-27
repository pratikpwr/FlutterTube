import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/playlists_screen.dart';
import '../widgets/channel_info_tile.dart';
import '../widgets/video_list._tile.dart';
import '../models/channel_models.dart';
import '../models/video_model.dart';
import '../services/api_service.dart';

class ChannelScreen extends StatefulWidget {
  final String channelId;

  ChannelScreen(this.channelId);

  @override
  _ChannelScreenState createState() => _ChannelScreenState();
}

class _ChannelScreenState extends State<ChannelScreen> {
   Channel? _channel;
  bool _isLoading = false;

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

  loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId: _channel!.uploadPlaylistId);
    List<Video> allVideos = _channel!.videos!..addAll(moreVideos);
    setState(() {
      _channel!.videos = allVideos;
    });
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              _channel != null ? _channel!.title : '',
              style: GoogleFonts.titilliumWeb(fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Uploads',
                ),
                Tab(
                  text: 'Playlists',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              uploads(context, _channel, _isLoading, loadMoreVideos),
              PlayListsScreen(widget.channelId)
            ],
          )),
    );
  }
}

Widget uploads(BuildContext context, Channel? _channel, bool _isLoading,
    Function loadMoreVideos) {
  return _channel != null
      ? NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollDetails) {
            if (!_isLoading &&
                _channel.videos!.length != int.parse(_channel.videoCount) &&
                scrollDetails.metrics.pixels ==
                    scrollDetails.metrics.maxScrollExtent) {
              loadMoreVideos();
            }
            return false;
          },
          child: ListView.builder(
            itemCount: 1 + _channel.videos!.length,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return ChannelInfoTile(_channel);
              }
              Video video = _channel.videos![index - 1];
              return VideoListTile(video);
            },
          ),
        )
      : Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).primaryColor, // Red
            ),
          ),
        );
}
