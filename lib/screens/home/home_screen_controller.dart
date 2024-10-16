import 'package:chat_app/data_provider/repository.dart';
import 'package:chat_app/models/last_chat_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{

  RxList<LastChatModel> lastChatList = <LastChatModel>[].obs;
  RxList<LastChatModel> searchChatList = <LastChatModel>[].obs;
  TextEditingController searchController = TextEditingController();
onInit() {

  super.onInit();
  userLastChat();
}

  userLastChat() async{
  lastChatList.clear();
         var json =  await Repository.instance.getUsersWithLastChat();
         json.forEach((element) {
           lastChatList.add(LastChatModel.fromJson(element));
         });
  }

  void search() {
    searchChatList.clear();
    lastChatList.forEach((element) {
      if (element.name!.toLowerCase().contains(searchController.text.toLowerCase())) {
        searchChatList.add(element);
      }
    });
  }
}