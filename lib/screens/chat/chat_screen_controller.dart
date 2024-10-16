import 'dart:ffi';

import 'package:chat_app/data/const.dart';
import 'package:chat_app/data/logger.dart';
import 'package:chat_app/data/prefrences.dart';
import 'package:chat_app/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../../data/toasty.dart';
import '../../data_provider/repository.dart';
import '../../models/result.dart';

class ChatScreenController extends GetxController {
  RxString status=Status.NORMAL.obs;
  String? userId;
  RxBool myOnlineStatus = false.obs;
  TextEditingController messageTextController = TextEditingController();
  ChatScreenController({String userId=''}){
    this.userId = userId;
  }
  RxList<ChatModel> chatList = <ChatModel>[].obs;

  late IO.Socket socket;
  onInit() {

    super.onInit();
    getChat();
    connectToSocket();
    socket.emit('userOnline', Preference.user.id.toString());
    // socket.emit('online event', Preference.user.id.toString());
  }


  void connectToSocket() {
    socket = IO.io('http://192.168.104.116:4000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();
    socket.onConnect((_) {
      Logger.e(tag: 'Connected to the server', value: '');
    });

    socket.onDisconnect((_) {
      Logger.e(tag: 'Disconnected from the server', value: '');
      socket.emit('offLine', Preference.user.id.toString());
      Const.isOnline.value=false;
    });

    socket.on('chat message', (data) {
      chatList.clear();
      data.forEach((element) {
        chatList.add(ChatModel.fromJson(element));
      });
      Logger.e(tag: 'Message received: ', value: data);
      // Handle incoming messages here
    });



    socket.on('online event', (data) {
      Logger.e(tag: 'User with ID $data is online', value: data);
      if(int.parse(userId??'')==int.parse(data)){
        Const.isOnline.value=true;
        if(myOnlineStatus==false){
          socket.emit('userOnline', Preference.user.id.toString());
          myOnlineStatus.value=true;
        }
      }
      // Handle the online event here (e.g., update UI, notify user)
    });

    socket.on('offline event', (data) {
      Logger.e(tag: 'User with ID $data is offline', value: data);
      if(int.parse(userId??'')==int.parse(data)){
        Const.isOnline.value=false;
        // if(myOnlineStatus==true){
        //   // socket.emit('userOnline', Preference.user.id.toString());
          myOnlineStatus.value=false;
        // }
      }
    });


    socket.on(Preference.user.id.toString(), (data) {
      chatList.clear();
      data.forEach((element) {
        chatList.add(ChatModel.fromJson(element));
      });
      Logger.e(tag: 'Message received: ', value: data);
      // Handle incoming messages here
    });
  }
  getChat() async{
    var json =  await Repository.instance.getChat(uid: userId);
    json.forEach((element) {
      chatList.add(ChatModel.fromJson(element));
    });
  }



  void  sendMessage() async{
    if(messageTextController.text.isEmpty){
      Toasty.normal("Enter message");
    }
    status.value=Status.PROGRESS;
    try {
      Result result = await Repository.instance.sendMessage(chatId:Preference.user.id.toString()+"-"+userId.toString() ,message:messageTextController.text ,receiverId:userId ,senderId:Preference.user.id.toString());
      messageTextController.text='';
      if (result.success) {
        status.value = Status.NORMAL;
        Toasty.success(result.message);
        // Get.to(()=>LoginScreen());

      }
      else {
        status.value = Status.ERROR;
        Toasty.normal(result.message);
      }
    }
    catch(e){
      status.value=Status.NORMAL;
      Toasty.normal("Something went wrong");
    }
  }


  void sendChatMessage() {
    if (messageTextController.text.isEmpty) {
      Toasty.normal("Enter message");
      return;
    }
    final messageData = {
      'message': messageTextController.text,
      'receiver_id': userId,
      'sender_id': Preference.user.id.toString(),
      'chat_id': "${Preference.user.id}-$userId"
    };
    messageTextController.text='';
    if (socket != null && socket.connected) {
      socket.emit('chat message', messageData);
      Logger.e(tag: 'Message sent: ', value: messageData);

    } else {
      Logger.e(tag: 'Socket not connected: ', value: '');
    }
  }
}