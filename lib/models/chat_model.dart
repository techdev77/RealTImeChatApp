/// id : 1
/// chat_id : "1-2"
/// sender_id : 1
/// receiver_id : 2
/// message : "122w3"
/// media : null
/// read_status : 0
/// created_at : "2024-10-15T10:13:52.000Z"
/// updated_at : "2024-10-15T10:13:52.000Z"

class ChatModel {
  ChatModel({
      int? id, 
      String? chatId, 
      int? senderId, 
      int? receiverId, 
      String? message, 
      dynamic media, 
      int? readStatus, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _chatId = chatId;
    _senderId = senderId;
    _receiverId = receiverId;
    _message = message;
    _media = media;
    _readStatus = readStatus;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  ChatModel.fromJson(dynamic json) {
    _id = json['id'];
    _chatId = json['chat_id'];
    _senderId = json['sender_id'];
    _receiverId = json['receiver_id'];
    _message = json['message'];
    _media = json['media'];
    _readStatus = json['read_status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _chatId;
  int? _senderId;
  int? _receiverId;
  String? _message;
  dynamic _media;
  int? _readStatus;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  String? get chatId => _chatId;
  int? get senderId => _senderId;
  int? get receiverId => _receiverId;
  String? get message => _message;
  dynamic get media => _media;
  int? get readStatus => _readStatus;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['chat_id'] = _chatId;
    map['sender_id'] = _senderId;
    map['receiver_id'] = _receiverId;
    map['message'] = _message;
    map['media'] = _media;
    map['read_status'] = _readStatus;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}