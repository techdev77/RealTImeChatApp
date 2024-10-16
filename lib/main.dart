import 'package:chat_app/data/prefrences.dart';
import 'package:chat_app/screens/home/home_screen.dart';
import 'package:chat_app/screens/login/login_screen.dart';
import 'package:chat_app/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Preference.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Preference.isLogin==true?HomeScreen():LoginScreen(),// HomeScreen(),
    );
  }
}


