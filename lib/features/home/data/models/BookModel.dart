class BookModel {
  BookModel({
    required this.volumeInfo,
  });

  BookModel.fromJson(dynamic json) {
    volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);
  }

  late final VolumeInfo volumeInfo;
}

class VolumeInfo {
  VolumeInfo({
    this.title,
    this.authors,
    this.imageLinks,
  });

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? (json['authors'] as List<dynamic>).cast<String>() : [];

    imageLinks = ImageLinks.fromJson(json['imageLinks']);

    previewLink = json['previewLink'];
  }

  String? title;
  List<String>? authors;

  ImageLinks? imageLinks;

  String? previewLink;
}

class ImageLinks {
  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  late String smallThumbnail;
  late String thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }
}
