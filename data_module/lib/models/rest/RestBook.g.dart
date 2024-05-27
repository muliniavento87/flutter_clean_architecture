// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RestBook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

$RestBook _$$RestBookFromJson(Map<String, dynamic> json) => $RestBook()
  ..id = (json['id'] as num).toInt()
  ..name = json['name'] as String?
  ..status = (json['status'] as num?)?.toInt()
  ..price = (json['price'] as num?)?.toDouble();

Map<String, dynamic> _$$RestBookToJson($RestBook instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'price': instance.price,
    };
