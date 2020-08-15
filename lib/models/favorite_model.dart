import 'package:flutter/material.dart';
import 'package:learn_flutter/models/video_model.dart';

class Favorite with ChangeNotifier {
  List<Video> _videos = [];

  List<Video> get videos {
    return [..._videos];
  }

  void addOrRemove(Video video){
    video.isFavorite == false ? _videos.add(video) :
    _videos.removeWhere((element) => element.id == video.id);
    video.toggleFavoriteStatus();
    notifyListeners();
  }

}
