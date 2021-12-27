import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/playlist_model.dart';
import '../screens/playlist_videos_screen.dart';
import '../services/api_service.dart';

class PlayListsScreen extends StatefulWidget {
  final String channelId;

  PlayListsScreen(this.channelId);

  @override
  _PlayListsScreenState createState() => _PlayListsScreenState();
}

class _PlayListsScreenState extends State<PlayListsScreen> {
  List<Playlists>? _playlists;
 // bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _initChannel();
  }

  _initChannel() async {
    List<Playlists> playlists =
        await APIService.instance.fetchPlaylists(channelId: widget.channelId);
    setState(() {
      _playlists = playlists;
    });
  }

  /* _loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId: _channel.uploadPlaylistId);
    List<Video> allVideos = _channel.videos..addAll(moreVideos);
    setState(() {
      _channel.videos = allVideos;
    });
    _isLoading = false;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _playlists == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _playlists!.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PlaylistVideoScreen(_playlists![index].id);
                    }));
                  },
                  child: Card(
                    elevation: 5,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Image.network(
                          _playlists![index].thumbnailUrl,
                          height: 100,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                            child: Center(
                                child: Text(
                          _playlists![index].title,
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ))),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
