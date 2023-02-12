// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';


@JsonSerializable()
class FruitResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "fruitName")
  String? fruitName;
  @JsonKey(name: "quantity")
  String? quantity;

  FruitResponse(this.id, this.fruitName, this.quantity);

  factory FruitResponse.fromJson(Map<String, dynamic> json) =>
      _$FruitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FruitResponseToJson(this);
}