class IpoDetailsModel {
  String? name;
  int? iD;
  String? code;

  IpoDetailsModel({this.name, this.iD, this.code});

  IpoDetailsModel.fromJson(Map<String, dynamic> json) {
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