import 'package:chat_app/data/const.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:chat_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../../data/prefrences.dart';
import '../../data/toasty.dart';
import '../../data_provider/repository.dart';
import '../home/home_screen_controller.dart';

class LoginController extends GetxController{
  RxString status=Status.NORMAL.obs;
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();


 void  login() async{
    bool isValidate = validation();
    if(!isValidate){
      return;
    }
    status.value=Status.PROGRESS;
    try {
      var result = await Repository.instance.login(
          emailTextController.text, passwordTextController.text);
      if (result['success'] == true) {
        Toasty.success(result['message']);
        UserModel userModel = UserModel.fromJson(result['data']);
        Preference.setUser(userModel);
        Preference.setLogin(true);
        status.value=Status.NORMAL;
        Get.to(()=>HomeScreen());
      } else {

      }
    }
    catch(e){
      status.value=Status.ERROR;
    }
    status.value=Status.NORMAL;

  }

  bool validation() {
    if(emailTextController.text.isEmpty){
      Toasty.normal("Enter email");
      return false;
    }else if(passwordTextController.text.isEmpty){
      Toasty.normal("Enter password");
      return false;
    }
    return true;
  }
}