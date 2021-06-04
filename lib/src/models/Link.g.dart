// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(
    method: json['Method'] as String?,
    rel: json['Rel'] as String?,
    href: json['Href'] as String?,
  );
}

Map<String, dynamic> _$LinkToJson(Link instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Method', instance.method);
  writeNotNull('Rel', instance.rel);
  writeNotNull('Href', instance.href);
  return val;
}
