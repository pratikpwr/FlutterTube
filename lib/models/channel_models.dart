import '../models/video_model.dart';

class Channel {
  final String id;
  final String title;
  final String description;
  final String profilePictureUrl;
  final String bannerUrl;
  final String subscriberCount;
  final String videoCount;
  final String uploadPlaylistId;
  List<Video> videos;

  Channel({
    this.id,
    this.title,
    this.description,
    this.profilePictureUrl,
    this.subscriberCount,
    this.videoCount,
    this.bannerUrl,
    this.uploadPlaylistId,
    this.videos,
  });

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      description: map['snippet']['description'],
      profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
      bannerUrl: map['brandingSettings']['image']['bannerMobileHdImageUrl'],
      subscriberCount: map['statistics']['subscriberCount'],
      videoCount: map['statistics']['videoCount'],
      uploadPlaylistId: map['contentDetails']['relatedPlaylists']['uploads'],
    );
  }
}
