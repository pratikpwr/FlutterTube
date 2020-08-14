import 'package:flutter/material.dart';
import 'package:learn_flutter/models/video_model.dart';
import 'package:learn_flutter/services/api_service.dart';
import 'package:learn_flutter/widgets/video_list._tile.dart';

class PlaylistVideoScreen extends StatefulWidget {
  final String playlistId;

  PlaylistVideoScreen(this.playlistId);

  @override
  _PlaylistVideoScreenState createState() => _PlaylistVideoScreenState();
}

class _PlaylistVideoScreenState extends State<PlaylistVideoScreen> {
  List<Video> _videos;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _initChannel();
  }

  _initChannel() async {
    List<Video> videos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId: widget.playlistId);
    setState(() {
      _videos = videos;
    });
  }

  _loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId:widget.playlistId);
    List<Video> allVideos = _videos..addAll(moreVideos);
    setState(() {
      _videos = allVideos;
    });
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlayLists Videos'),
      ),
      body:_videos == null ? Center(
        child: CircularProgressIndicator(),
      ): NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollDetails) {
          if (!_isLoading &&
              scrollDetails.metrics.pixels ==
                  scrollDetails.metrics.maxScrollExtent) {
            _loadMoreVideos();
          }
          return false;
        },
        child: ListView.builder(
            itemCount: _videos.length,
            itemBuilder: (context, index) {
              return VideoListTile(_videos[index]);
            }),
      ),
    );
  }
}
