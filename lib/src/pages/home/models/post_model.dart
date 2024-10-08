import '../../../infrastracture/common/models/comment.dart';

class PostModel {
  // Variable
  final int id;
  final String photoUrl;
  final String description;
  final List<Comment> comments;
  List<String> likedUsernames = [];
  // Constractor
  PostModel({
    required this.id,
    required this.photoUrl,
    required this.description,
    required this.comments,
    required this.likedUsernames,
  });
  // Methods
  PostModel copyWith({
    int? id,
    String? photoUrl,
    String? description,
    List<Comment>? comments,
    List<String>? likedUsernames,
  }) {
    return PostModel(
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
      description: description ?? this.description,
      comments: comments ?? this.comments,
      likedUsernames: likedUsernames ?? this.likedUsernames,
    );
  }
}
