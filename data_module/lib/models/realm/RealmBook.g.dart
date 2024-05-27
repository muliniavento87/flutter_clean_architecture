// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RealmBook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

$RealmBook _$$RealmBookFromJson(Map<String, dynamic> json) => $RealmBook()
  ..id = (json['id'] as num).toInt()
  ..name = json['name'] as String?
  ..status = (json['status'] as num?)?.toInt()
  ..price = (json['price'] as num?)?.toDouble();

Map<String, dynamic> _$$RealmBookToJson($RealmBook instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'price': instance.price,
    };
