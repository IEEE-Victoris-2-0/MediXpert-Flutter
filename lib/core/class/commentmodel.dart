class Comment {
  final String username;
  final String commentText;
  final String profileImage;

  Comment({
    required this.username,
    required this.commentText,
    required this.profileImage,
  });
}

final List<Comment> comments = [
  Comment(
    username: 'Mayani Omar',
    commentText:
        'Using this online pharmacy is so easy\nI can quickly find what I need, order,\nand have it delivered right to my door.',
    profileImage: 'assets/images/business-girl (1).png',
  ),
  Comment(
    username: 'Galal Mohsan',
    commentText:
        'I trust this online pharmacy for all my\nmedication needs. They always deliver \non time.',
    profileImage: 'assets/images/business-girl (2).png',
  ),
  Comment(
    username: 'Khaled Gamal',
    commentText:
        'Their delivery service is fast and reliable.\nMy medications always arrive in \nexcellent condition.',
    profileImage: 'assets/images/business-girl (3).png',
  ),
  // Add more comments as needed
];
