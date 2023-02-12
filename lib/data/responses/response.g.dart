// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FruitResponse _$FruitResponseFromJson(Map<String, dynamic> json) =>
    FruitResponse(
      json['id'] as int?,
      json['fruitName'] as String?,
      json['quantity'] as String?,
    );

Map<String, dynamic> _$FruitResponseToJson(FruitResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fruitName': instance.fruitName,
      'quantity': instance.quantity,
    };
