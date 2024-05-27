import 'package:json_annotation/json_annotation.dart';
part 'RestBook.g.dart';


/// Modello Book per dati remoti da api REST
@JsonSerializable()
class $RestBook {
  late int id;
  late String? name;
  late int? status;
  late double? price;

  static $RestBook fromJson(Map<String, dynamic> json) => _$$RestBookFromJson(json);

  Map<String, dynamic> toJson() => _$$RestBookToJson(this);
}