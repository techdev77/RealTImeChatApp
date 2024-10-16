import 'package:chat_app/data/const.dart';
import 'package:chat_app/models/chat_model.dart';
import 'package:chat_app/values/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/helper.dart';
import '../../data/prefrences.dart';
import '../../values/dimen.dart';
import '../../values/theme_colors.dart';
import 'chat_screen_controller.dart';


class ChatScreen extends StatelessWidget {

  String? userId;
  String? name;
  late ChatScreenController? _controller;
  ChatScreen(this.userId,{this.name,super.key}){

  _controller = Get.put(ChatScreenController(userId: userId??''), tag : 'ChatScreenController');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                chatHeader(),
                _list(),
                chatTextView()
              ],
            ),
          ),
        ),
      ),
    );
  }



   Widget chatHeader() {
     return  Container(
       margin: const EdgeInsets.only(bottom: 8),
       child: Row(
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           InkWell(
               onTap: Get.back, child: const Icon(Icons.arrow_back)),
           10.hs,
           // if(userId.nullSafe.isNotEmpty) CircleAvatar(
           //   child:ClipOval(child: MyNetworkImage(path:Const.config.value.profileImagePath.nullSafe+profilePic.nullSafe,)) ,
           //   // backgroundImage:
           // ),
           // 10.hs,
     // Obx(()=>
     //       Const.isOnline.value?Container(
     //         height: 10,
     //         width: 10,
     //         decoration: BoxDecoration(
     //           color: Colors.green,
     //           shape: BoxShape.circle
     //         ),
     //       ):SizedBox(),),
           Stack(
             alignment: Alignment.bottomRight,
             children: [
               Container(
               height: 40,
               width: 40,
               // padding: EdgeInsets.all(15),
               alignment: Alignment.center,
               decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.blue
               ),
               child: Text(name?.toUpperCase()[0]??"",textAlign: TextAlign.center,style: TextStyle(height:0,color: Colors.white,fontSize: fontSizeExtraLarge+2),),
             ),
               Obx(
                 ()=>Const.isOnline.value? Container(
                           height: 10,
                           width: 10,
                           decoration: BoxDecoration(
                             color: Colors.green,
                             shape: BoxShape.circle,
                             border: Border.all(color: Colors.white)
                           ),
                         ):SizedBox(),
               )
       ]
           ),
           10.hs,
           Text(name??'',style: const TextStyle(
               color: Colors.black,
               fontSize: fontSizeLarge,
               fontWeight: FontWeight.w600
           ),),
           const Expanded(child: SizedBox()),
           // popupMenu()
         ],

       ),

     );
   }

   Widget _list() {
     return Expanded(
       child: Obx(
           ()=> ListView.builder(
               physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               reverse: true,
               itemCount:_controller?.chatList.length,
               itemBuilder:(contex,index)=> listItems(contex,index)


         ),
       ),
     );
   }




   Widget listItems(BuildContext context,int index) {
    ChatModel data=_controller!.chatList[index];
    String time=Helper.getTimeAgo(data.createdAt);
     // ChatModel data=chatController!.chatList[chatController!.chatList.length-index-1];
     // ChatModel data2=ChatModel();
     // if(chatController!.chatList.length!=index+1){
     //   data2=chatController!.chatList[chatController!.chatList.length-index-2];
     // }
     // String timeAgo=Helper.timeAgoSinceDate(createdTime: data.createdAt.toString());
     // String time=Helper.getTimeTile(data.createdAt.toString());
     // String time2=Helper.getTimeTile(data2.createdAt.toString());
     // DateTime date = DateTime.parse(data.createdAt.nullSafe).toLocal();
     // String messageTime=DateFormat("HH:mm").format(date);
     String formattedTime = '';

     // if (time2 != time) {
     //   formattedTime = time;
     // }

     return  Column(
       mainAxisSize: MainAxisSize.min,
       crossAxisAlignment: data.senderId!=int.parse(userId??'')?CrossAxisAlignment.end:CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
         if (formattedTime.isNotEmpty)
           Center(child: Text(formattedTime)),
         5.vs,
         // if(data.media.nullSafe.isNotEmpty)

           // ClipRRect(
           //   borderRadius: BorderRadius.circular(10),
           //   child: MyNetworkImage(path: Const.config.value.smsMediaPath.nullSafe+data.media.nullSafe,width: 40.w,open: true,showDefaultProfile: false),
           // ),
         // Image.asset("assets/images/Screenshot4.png",width: 100),
         // if(data.message.nullSafe.isNotEmpty)
           Container(
             constraints: BoxConstraints( maxWidth: 100.w / 1.5),
             padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
             decoration:  BoxDecoration(
               color: data.senderId!=int.parse(userId??'')?Color(0xFFE4EAF3):Color(0xFFF2F2F2),
               borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
             child: Text(data.message??'',textAlign: TextAlign.center,),
           ),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 10),
           child: Text(time,style: TextStyle(color: Color(0xFF727272,),fontSize:12),),
         ),
         20.vs,
       ],
     );
   }



   Widget chatTextView() {
     return  Container(
       decoration: const BoxDecoration(
           color: Color(0xFFF2F2F2),
           borderRadius: BorderRadius.all(Radius.circular(5))
       ),
       padding: const EdgeInsets.symmetric(horizontal: 5),
       child: Column(
         children: [
           Row(
             children: [
               // InkWell(
               //     onTap: () {
               //       // chatController?.pickImageFromCamera();
               //     },
               //     child: Image.asset("assets/images/camera.png",width: 22,color: ThemeColors.colorPrimary,)),
               // 10.hs,
               // InkWell(
               //     onTap: (){
               //       // chatController?.emojiShowing.value=!chatController!.emojiShowing.value;
               //     },
               //     child: Image.asset("assets/images/imoji.png",width: 18)),
               // 10.hs,
               // InkWell(
               //     // onTap:()=> chatController?.pickImageFromGallery(),
               //     child: Image.asset("assets/images/atacher.png",width: 18,color: Color(0xFF535353),)),
               // 10.hs,
               Expanded(
                 child: TextField(
                   controller: _controller?.messageTextController,
                   decoration:  InputDecoration(
                       isDense: true,
                       border: InputBorder.none,
                       hintText: "type your message".tr,
                       hintStyle: const TextStyle(
                           color: Color(0xFF727272),
                           fontSize: fontSizeMedium-1
                       ),
                       contentPadding: EdgeInsets.zero
                   ),
                 ),
               ),
               InkWell(onTap:()=> _controller?.sendChatMessage()/*_controller?.sendMessage()*/,
                 child: Container(
                   margin: const EdgeInsets.symmetric(vertical: 5),
                   padding: const EdgeInsets.all(8),
                   decoration: const BoxDecoration(
                       color: ThemeColors.colorPrimary,
                       borderRadius: BorderRadius.all(Radius.circular(5))
                   ),
                   child:  Image.asset("assets/images/send.png",width: 20,color:Colors.white,),
                 ),
               )

             ],
           ),
           // emoji()
         ],
       ),
     );
   }




   // Widget emoji() {
   //   return Obx(()=>
   //       Offstage(
   //         offstage: !chatController!.emojiShowing.value,
   //         child: SizedBox(
   //             height: 250,
   //             child: EmojiPicker(
   //               textEditingController: chatController?.chatTextController,
   //               onBackspacePressed: chatController?.onBackspacePressed(),
   //               config: Config(
   //                 columns: 7,
   //                 // Issue: https://github.com/flutter/flutter/issues/28894
   //                 emojiSizeMax: 32 *
   //                     (foundation.defaultTargetPlatform ==
   //                         TargetPlatform.iOS
   //                         ? 1.30
   //                         : 1.0),
   //                 verticalSpacing: 0,
   //                 horizontalSpacing: 0,
   //                 gridPadding: EdgeInsets.zero,
   //                 initCategory: Category.RECENT,
   //                 bgColor: const Color(0xFFF2F2F2),
   //                 indicatorColor: Colors.blue,
   //                 iconColor: Colors.grey,
   //                 iconColorSelected: Colors.blue,
   //                 backspaceColor: Colors.blue,
   //                 skinToneDialogBgColor: Colors.white,
   //                 skinToneIndicatorColor: Colors.grey,
   //                 enableSkinTones: true,
   //                 recentTabBehavior: RecentTabBehavior.RECENT,
   //                 recentsLimit: 28,
   //                 replaceEmojiOnLimitExceed: false,
   //                 noRecents: const Text(
   //                   'No Recents',
   //                   style: TextStyle(fontSize: 20, color: Colors.black26),
   //                   textAlign: TextAlign.center,
   //                 ),
   //                 loadingIndicator: const SizedBox.shrink(),
   //                 tabIndicatorAnimDuration: kTabScrollDuration,
   //                 categoryIcons: const CategoryIcons(),
   //                 buttonMode: ButtonMode.MATERIAL,
   //                 checkPlatformCompatibility: true,
   //               ),
   //             )),
   //       ),
   //   );
   // }
}
