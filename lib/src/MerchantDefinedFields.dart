part 'MerchantDefinedFields.g.dart';

class MerchantDefinedFields {
  dynamic id;
  String value;

  MerchantDefinedFields({this.id, this.value});

  factory MerchantDefinedFields.fromJson(Map<String, dynamic> json) =>
      _$MerchantDefinedFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDefinedFieldsToJson(this);
}
