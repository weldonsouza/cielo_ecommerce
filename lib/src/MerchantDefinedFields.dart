import 'package:json_annotation/json_annotation.dart';

part 'MerchantDefinedFields.g.dart';

@JsonSerializable(includeIfNull: false)
class MerchantDefinedFields {
  dynamic id;
  String value;

  MerchantDefinedFields({this.id, this.value});

  factory MerchantDefinedFields.fromJson(Map<String, dynamic> json) =>
      _$MerchantDefinedFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDefinedFieldsToJson(this);
}
