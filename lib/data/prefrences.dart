import 'dart:convert';

import 'package:chat_app/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helper.dart';

class Preference  {
  static const _IS_LOGIN = "is_login";
  static const CODE = "202";
  static const _USER = 'user_5684';
  static UserModel? _user;
  static String _NEXT_LOGS_FILE_UPDATED = '';
  static String LANGUAGE = 'ln';
  static String ISINTRO = 'intro';

  static SharedPreferences? _pref;

  static Future init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static bool get isAvailable => _pref != null;

  static bool containsKey(String key) => _pref!.containsKey(key);// have to check it

  // static bool get isUserAvailable => _pref!.containsKey(_USER) && _pref!.getString(_USER).notEmpty;

  static int get nextLogsFileUpdated => _pref!.getInt(_NEXT_LOGS_FILE_UPDATED) ?? Helper.currentMillis;

  static void scheduleNextLogsFileUpdated() {
    _pref!.setInt(_NEXT_LOGS_FILE_UPDATED, Helper.currentMillis + (10 * 60 * 1000));
  }
  static UserModel get user {
    if (_user == null) {
      _user = UserModel.fromJson(jsonDecode(_pref!.getString(_USER) ?? '{}'));
    }
    return _user!;
  }

  static void setUser(UserModel u) {
    if (u.id!=''  /*u.contact.notEmpty || u.email.notEmpty || u.socialId.notEmpty*/) {
      _user = u;
      _pref!.setString(_USER, jsonEncode(u.toJson()));
    } /* else {
      Logger.e(tag: 'INVALID USER', value: u.toJson());
    }*/
  }

  //Check Login or not?
  static bool get isLogin => _pref!.getBool(_IS_LOGIN) ?? false;

  static Future<void> setLogin(bool login) => _pref!.setBool(_IS_LOGIN, login);

  //code found or not
  static String get code => _pref!.getString(CODE) ?? '202';

  static Future<void> setCode(String  code) => _pref!.setString(CODE, code);

 //check languages
  static String get language => _pref!.getString(LANGUAGE) ?? 'fr';
  static Future<void> setLanguage(String language) => _pref!.setString(LANGUAGE, language);

//check languages
  static bool get intro => _pref!.getBool(ISINTRO) ?? false;
  static Future<void> setIntro(bool intro) => _pref!.setBool(ISINTRO, intro);
  static void clear() {
    _user == null;
    _pref?.clear();
  }



}
