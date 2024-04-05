/*
class IpoDeatilsDemo {
  IpoDeatilsDemo({
    required this.status,
    required this.message,
    required this.id,
    this.lastupdateddate,
    required this.data,
    this.Androidversion,
    this.IOSversion,
    this.IOSBuild,
    this.versionExpDate,
    this.MessageOfFixes,
    this.MobileNo,
    this.OTP,
    this.chatmessage,
    this.FileUrl,
    this.RMCodes,
  });
  late final String status;
  late final String message;
  late final String id;
  late final Null lastupdateddate;
  late final Data data;
  late final Null Androidversion;
  late final Null IOSversion;
  late final Null IOSBuild;
  late final Null versionExpDate;
  late final Null MessageOfFixes;
  late final Null MobileNo;
  late final Null OTP;
  late final Null chatmessage;
  late final Null FileUrl;
  late final Null RMCodes;

  IpoDeatilsDemo.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    id = json['id'];
    lastupdateddate = null;
    data = Data.fromJson(json['data']);
    Androidversion = null;
    IOSversion = null;
    IOSBuild = null;
    versionExpDate = null;
    MessageOfFixes = null;
    MobileNo = null;
    OTP = null;
    chatmessage = null;
    FileUrl = null;
    RMCodes = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['id'] = id;
    _data['lastupdateddate'] = lastupdateddate;
    _data['data'] = data.toJson();
    _data['Androidversion'] = Androidversion;
    _data['IOSversion'] = IOSversion;
    _data['IOSBuild'] = IOSBuild;
    _data['versionExpDate'] = versionExpDate;
    _data['MessageOfFixes'] = MessageOfFixes;
    _data['MobileNo'] = MobileNo;
    _data['OTP'] = OTP;
    _data['chatmessage'] = chatmessage;
    _data['FileUrl'] = FileUrl;
    _data['RMCodes'] = RMCodes;
    return _data;
  }
}
*/
class IpoDeatilsDemo {
  String? name;
  int? iD;
  String? code;

  IpoDeatilsDemo({this.name, this.iD, this.code});

  IpoDeatilsDemo.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    iD = json['ID'];
    code = json['Code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['ID'] = this.iD;
    data['Code'] = this.code;
    return data;
  }
}