import 'package:chat_app/data/prefrences.dart';
import 'package:chat_app/screens/profile/Profile_controller.dart';
import 'package:chat_app/values/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../dialogs/exit_dialog.dart';
import '../../values/dimen.dart';
import '../../values/theme_colors.dart';
import '../login/login_screen.dart';


class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  final ProfileController _controller = Get.put(ProfileController(), tag : 'ProfileScreenController');

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: Get.back, icon: const Icon(Icons.arrow_back)),
                  IconButton(onPressed: (){
                    ExitDialog('Do you want to exit?',(){
                     Preference.setLogin(false);
                     Preference.clear();
                     Get.offAll(()=>LoginScreen());
                    },'Log Out?');
                  }, icon: const Icon(Icons.exit_to_app))
                ],
              ),
              const SizedBox(height: 70,),
              // Spacer(),
              const Text("Profile",style: TextStyle(fontSize: fontSizeExtraLarge+2,fontWeight: FontWeight.w600),),
              20.vs,
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue
                ),
                child: Center(child: Text(Preference.user.name?.toUpperCase()[0]??"",style: const TextStyle(color: Colors.white,fontSize: fontSizeExtraLarge+10),)),
              ),
              20.vs,
              Text(Preference.user.name??"",style: TextStyle(fontSize: fontSizeLarge,fontWeight: FontWeight.w600),),
              5.vs,
              Text(Preference.user.contact??"",style: TextStyle(fontSize: fontSizeLarge,fontWeight: FontWeight.w600),),
              5.vs,
              Text(Preference.user.email??"",style: TextStyle(fontSize: fontSizeLarge,fontWeight: FontWeight.w600),),
              5.vs,
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
