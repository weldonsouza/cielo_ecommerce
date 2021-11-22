part 'AdditionalData.g.dart';

/// Classe Additional Data da documentação oficial Cielo Ecommerce
class AdditionalData {
  String? signature;

  AdditionalData({
    this.signature,
  });

  factory AdditionalData.fromJson(Map<String, dynamic> json) =>
      _$AdditionalDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalDataToJson(this);
}
