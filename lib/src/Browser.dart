part 'Browser.g.dart';

class Browser {
  String hostName;
  bool cookiesAccepted;
  String email;
  String type;
  String ipAddress;

  Browser(
      {this.hostName,
      this.cookiesAccepted,
      this.email,
      this.type,
      this.ipAddress});

  factory Browser.fromJson(Map<String, dynamic> json) =>
      _$BrowserFromJson(json);

  Map<String, dynamic> toJson() => _$BrowserToJson(this);
}
