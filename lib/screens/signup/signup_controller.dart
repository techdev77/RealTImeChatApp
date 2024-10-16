import 'package:chat_app/data/const.dart';
import 'package:chat_app/data/toasty.dart';
import 'package:chat_app/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data_provider/repository.dart';
import '../../models/result.dart';

class SignupController extends  GetxController{

  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController contactTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
 RxString status =Status.NORMAL.obs;


  void  register() async{
    bool isValidate = validation();
    if(!isValidate){
      return;
    }
    status.value=Status.PROGRESS;
    try {
      Result result = await Repository.instance.register(
          emailTextController.text, passwordTextController.text, contactTextController.text,nameTextController.text);

      if (result.success) {
        status.value = Status.NORMAL;
        Toasty.success(result.message);
        Get.to(()=>LoginScreen());

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

  bool validation() {
    if(nameTextController.text.isEmpty){
      Toasty.normal("Enter name");
      return false;
    }else if(contactTextController.text.isEmpty){
      Toasty.normal("Enter contact");
      return false;
    }else if(emailTextController.text.isEmpty){
      Toasty.normal("Enter email");
      return false;
    }else if(passwordTextController.text.isEmpty){
      Toasty.normal("Enter password");
      return false;
    }
    return true;
  }

}