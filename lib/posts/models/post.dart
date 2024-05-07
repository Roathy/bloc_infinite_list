import 'package:equatable/equatable.dart';

final class Post extends Equatable {
  const Post({
    required this.id,
    required this.body,
    required this.title,
  });

  final int id;
  final String body;
  final String title;

  @override
  List<Object?> get props => [
        id,
        body,
      ];
}
