import 'package:project_managment/src/infrastracture/common/models/comment.dart';

class PostModel {
  // Variable
  int id;
  String photoUrl;
  String description;
  List<Comment> comments;
  // Constractor
  PostModel({
    required this.id,
    required this.photoUrl,
    required this.description,
    required this.comments,
  });
  // Methods
  PostModel copyWith({
    int? id,
    String? photoUrl,
    String? description,
    List<Comment>? comments,
  }) {
    return PostModel(
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
      description: description ?? this.description,
      comments: comments ?? this.comments,
    );
  }
}
