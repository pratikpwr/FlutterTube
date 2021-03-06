import 'package:flutter/material.dart';

class Video with ChangeNotifier {
  final String id;
  final String title;

  //final String videoCo;
  final String thumbnailUrl;
  final String channelTitle;
  bool isFavorite;

  Video({
    this.id,
    this.title,
    //this.duration,
    this.thumbnailUrl,
    this.channelTitle,
    this.isFavorite = false,
  });

  factory Video.fromMap(Map<String, dynamic> snippet) {
    return Video(
      id: snippet['resourceId']['videoId'],
      title: snippet['title'],
      //duration: snippet['contentDetails']['duration'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      channelTitle: snippet['channelTitle'],
    );
  }

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
