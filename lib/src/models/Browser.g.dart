// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Browser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
Browser _$BrowserFromJson(Map<String, dynamic> json) {
  return Browser(
    hostName: json['HostName'] as String?,
    cookiesAccepted: json['CookiesAccepted'] as bool?,
    email: json['Email'] as String?,
    type: json['Type'] as String?,
    ipAddress: json['IpAddress'] as String?,
  );
}

/// Classe helper de serialização JSON
Map<String, dynamic> _$BrowserToJson(Browser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('HostName', instance.hostName);
  writeNotNull('CookiesAccepted', instance.cookiesAccepted);
  writeNotNull('Email', instance.email);
  writeNotNull('Type', instance.type);
  writeNotNull('IpAddress', instance.ipAddress);
  return val;
}
