import 'package:chat_app/screens/home/home_screen.dart';
import 'package:chat_app/screens/login/login_controller.dart';
import 'package:chat_app/screens/signup/signup_screen.dart';
import 'package:chat_app/values/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/const.dart';
import '../../values/dimen.dart';
import '../../values/theme_colors.dart';



class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  final LoginController _controller = Get.put(LoginController(), tag : 'LoginScreenController');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                const Text("Login",style: TextStyle(fontWeight: FontWeight.w600,fontSize: fontSizeExtraLarge+10),),
                50.vs,
                textFieldName("Email".tr),
                8.vs,
                formField(textHint: "Email".tr,controller: _controller.emailTextController),
                20.vs,
                textFieldName("Password".tr),
                8.vs,
                formField(textHint: "Passoword".tr,controller: _controller.passwordTextController,obscureText: true,),
                80.vs,
                Obx(
                  ()=>_controller.status.value==Status.PROGRESS?loader(): FractionallySizedBox(
                    widthFactor: 1.0,
                    child: GestureDetector(
                      onTap: (){
                      _controller.login();
                      },
                      child: Container(
                        padding:
                        const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ThemeColors.colorPrimary,
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: fontSizeLarge,fontFamily: 'OpenSans'),
                          ),
                        ),
                      ),
                    ),

                  ),
                ),
                TextButton(onPressed: (){
                  Get.to(()=>SignupScreen());
                }, child: Text("Don't have an account? Sign up".tr,style: TextStyle(color: Colors.blue),)),

                Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget loader(){
     return Center(
       child: const LinearProgressIndicator(
         backgroundColor: ThemeColors.colorPrimary,
         valueColor: AlwaysStoppedAnimation(Colors.white),
         minHeight: 5,
         borderRadius: BorderRadius.all(Radius.circular(4.0)),
       ),
     );
   }


   Widget textFieldName(String fieldName,{bool optional=false,Color? color}){
     return Container(
       alignment: Alignment.topLeft,
       child: RichText(
         text: TextSpan(
           text: fieldName,
           style:  TextStyle(
               color: color ?? const Color(0xFF949494),
               fontSize: fontSizeSmall
           ),
           children:  [
             !optional?TextSpan(
               text: ' *',
               style: TextStyle(
                   color: color ?? const Color(0xFF949494) // Customize the color of the star symbol
               ),
             ):TextSpan(),
           ],
         ),
       ),
     );
   }


   Widget formField({String? textHint,TextEditingController? controller,bool isUpdate=false, obscureText=false}){
     return Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(3),
         border: Border.all(
           color: const Color(0xFF949494),
           width: 0.2,
         ),
       ),
       child: TextField(
         controller: controller,
         obscureText: obscureText,
         decoration:  InputDecoration(
           isDense: true,
           hintText: textHint,
           border: InputBorder.none,
           contentPadding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.6.h),
           hintStyle: const TextStyle(
             fontWeight: FontWeight.normal,
             fontSize: fontSizeMedium,
             color: Color(0xFF363E3D),
           ),
         ),
         onChanged: (value) {},
       ),
     );
   }

}
