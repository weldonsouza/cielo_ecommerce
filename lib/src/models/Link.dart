part 'Link.g.dart';

/// Classe Link da documentação oficial Cielo Ecommerce
class Link {
  String? method;
  String? rel;
  String? href;

  Link({
    this.method,
    this.rel,
    this.href,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
