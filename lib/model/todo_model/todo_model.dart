import 'package:objectbox/objectbox.dart';

@Entity()
class TodoModel {
  @Id()
  int id;

  String title;
  String content;
  String date;

  TodoModel({
    this.id = 0,
    required this.title,
    required this.content,
    required this.date,
  });
}
