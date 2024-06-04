import 'package:json_annotation/json_annotation.dart';
part 'book.g.dart';

@JsonSerializable()
class Book {
  int? id;
  String name;
  int status;
  double price;

  Book({
    this.id,
    required this.name,
    required this.status,
    required this.price,
  });

  factory Book.fromJson(Map<String, dynamic> json) =>
      _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);
}