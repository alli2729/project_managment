class Post {
  // Variable
  int id;
  String photoUrl;
  String description;
  // Constractor
  Post({
    required this.id,
    required this.photoUrl,
    required this.description,
  });
  // Methods
  Post copyWith({
    int? id,
    String? photoUrl,
    String? description,
  }) {
    return Post(
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
      description: description ?? this.description,
    );
  }
}
