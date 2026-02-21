class RandomUserEntity {
  final NameEntity name;
  final PictureEntity picture;

  const RandomUserEntity({required this.name, required this.picture});

  factory RandomUserEntity.fromJson(Map<String, dynamic> json) {
    return RandomUserEntity(
      name: NameEntity.fromJson(json['name']),
      picture: PictureEntity.fromJson(json['picture']),
    );
  }
}

class NameEntity {
  final String title;
  final String first;
  final String last;

  NameEntity({required this.title, required this.first, required this.last});

  factory NameEntity.fromJson(Map<String, dynamic> json) {
    return NameEntity(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }
}

class PictureEntity {
  final String medium;
  final String thumbnail;

  const PictureEntity({required this.medium, required this.thumbnail});

  factory PictureEntity.fromJson(Map<String, dynamic> json) {
    return PictureEntity(medium: json['medium'], thumbnail: json['thumbnail']);
  }
}
