class Project {
  // Variable
  final int id;
  final String title;
  final List<int> usersIds;

  // Constractor
  Project({required this.id, required this.title, required this.usersIds});

  // Methods
  Project copyWith({int? id, String? title, List<int>? usersIds}) {
    return Project(
      id: id ?? this.id,
      title: title ?? this.title,
      usersIds: usersIds ?? this.usersIds,
    );
  }

  @override
  String toString() {
    return '$title , $usersIds';
  }
}
