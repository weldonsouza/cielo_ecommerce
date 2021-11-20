import 'models.dart';

part 'Wallet.g.dart';

class Wallet {
  String? type;
  String? walletKey;
  AdditionalData? additionalData;

  Wallet({
    this.type,
    this.walletKey,
    this.additionalData,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) =>
      _$WalletFromJson(json);

  Map<String, dynamic> toJson() => _$WalletToJson(this);
}
