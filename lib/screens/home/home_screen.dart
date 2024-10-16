import 'package:chat_app/data/helper.dart';
import 'package:chat_app/data/prefrences.dart';
import 'package:chat_app/models/last_chat_model.dart';
import 'package:chat_app/screens/profile/profile_screen.dart';
import 'package:chat_app/values/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../values/dimen.dart';
import '../../values/theme_colors.dart';
import '../chat/chat_screen.dart';
import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final HomeScreenController _controller = Get.put(HomeScreenController(), tag : 'HomeScreenController');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () => Get.to(ProfileScreen()),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                            ),
                            child: Center(child: Text(Preference.user.name?.toUpperCase()[0]??"",style: TextStyle(color: Colors.white,fontSize: fontSizeExtraLarge),)),
                          ),
                        ),
                        Spacer(),
                        Text("Chats",style: TextStyle(fontSize: fontSizeExtraLarge,fontWeight: FontWeight.w600),),
                        Spacer()
                      ],
                    ),
              10.vs,

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _controller.searchController,
                  decoration: const InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: OutlineInputBorder(),
                      hintText: 'Search'
                  ),
                  onChanged: (value) {
                    _controller.search();
                  },
                ),
              ),
              10.vs,
              // Container(
              //   // height: 30,
              //   decoration: BoxDecoration(
              //     color: Colors.blue
              //   ),
              //   child:Row(
              //     children: [
              //       Container(
              //         padding: EdgeInsets.all(10),
              //         margin: EdgeInsets.all(10),
              //         height: 40,
              //         width: 40,
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle,
              //             color: Colors.white
              //         ),
              //         child: Center(child: Text(Preference.user.name?[0]??"",style: TextStyle(color: Colors.white,fontSize: fontSizeExtraLarge),)),
              //       ),
              //     ],
              //   )
              // ),
             Expanded(child: Obx(() {
               _controller.searchChatList.length;
               if(_controller.searchController.text.isNotEmpty){
                 print("ghjkl;......");
                 return ListView.builder(itemBuilder:(context,index)=> _list(context, index,_controller.searchChatList),itemCount: _controller.searchChatList.length);
               }
               return ListView.builder(itemBuilder:(context,index)=> _list(context, index,_controller.lastChatList),itemCount: _controller.lastChatList.length,);
             }))
            ],
          ),
        ),
      ),
    );
  }


  Widget? _list(BuildContext context, int index,List<LastChatModel> list) {
    LastChatModel lastChatModel=list[index];
    String time=Helper.getTimeAgo(lastChatModel.lastChatTime);
    if(lastChatModel.name==null || lastChatModel.name==''){
      return SizedBox();
    }
    return  InkWell(
      onTap: ()=>Get.to(()=>ChatScreen(lastChatModel.id.toString(),name: lastChatModel.name,))?.then((value) {
        _controller.userLastChat();
      }),
      child: Container(
        child: Row(
          children: [
               InkWell(
                 onTap: (){Get.to(()=>ProfileScreen());},
                 child: Container(
                   padding: EdgeInsets.all(10),
                   margin: EdgeInsets.all(10),
                   height: 50,
                   width: 50,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.blue
                   ),
                   child: Center(child: Text(lastChatModel.name?.toUpperCase()[0]??"",style: const TextStyle(color: Colors.white,fontSize: fontSizeExtraLarge),)),
                 ),
               ),
            10.hs,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(lastChatModel.name??'',style: TextStyle(fontWeight: FontWeight.bold,fontSize: fontSizeLarge),),
                Text(lastChatModel.lastChatMessage??'',style: TextStyle(fontSize: fontSizeMedium-1,color: Colors.black.withOpacity(0.4)),)
              ],
            ),
            Spacer(),
            Text(time??'',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: fontSizeSmall),),
            ]
        ),
      ),
    );
  }
}
