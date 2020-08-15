class Playlists {
  final String id;
  final String title;
  final String description;
  final String thumbnailUrl;

  Playlists({this.id, this.title, this.description, this.thumbnailUrl});

  factory Playlists.fromMap(Map<String, dynamic> map) {
    return Playlists(
        id: map['id'],
        title: map['snippet']['title'],
        description: map['snippet']['description'],
        thumbnailUrl: map['snippet']['thumbnails']['high']['url']);
  }

/*factory Playlists.fromMap(Map<String, dynamic> snippet) {
    return Playlists(
      //id: map['id'],
        title: snippet['title'],
        thumbnailUrl: snippet['thumbnails']['high']['url']
    );
  }*/
}
