part 'MerchantDefinedFields.g.dart';

/// Classe Merchant Defined Fields da documentação oficial Cielo Ecommerce
class MerchantDefinedFields {
  dynamic id;
  String? value;

  MerchantDefinedFields({this.id, this.value});

  factory MerchantDefinedFields.fromJson(Map<String, dynamic> json) =>
      _$MerchantDefinedFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDefinedFieldsToJson(this);
}
