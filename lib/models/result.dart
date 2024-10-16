class Result {
  bool success = false;
  String message = '';
  String value = '';
  String value2 = '';

  Result({this.success = false, this.message = '', this.value = '', this.value2 = ''});

  Result.fromJson(dynamic json){
    success = json["success"];
    message = json["message"].toString();
    value = json["value"].toString();
    value2 = json["value2"].toString();
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = success;
    map["message"] = message;
    map["value"] = value;
    map["value2"] = value2;
    return map;
  }

  @override
  String toString() {
    return 'Result{success: $success, message: $message, value: $value, value2: $value2}';
  }
}
