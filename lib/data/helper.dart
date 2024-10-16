import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:chat_app/data/toasty.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'const.dart';
import 'logger.dart';
typedef RefreshCallback = void Function();
class Helper{
  static const String DATE_FORMAT_1 = "yyyy_MM_dd_HH_mm_ss";
  static const String UTC_FORMATE = "yyyy-MM-dd HH:mm:ss";
  static const String DATE_FORMAT_3 = "dd MMM yyyy, hh:mm a";
  static const String DATE_FORMAT_4 = "dd MMM yyyy";
  static const String DATE_FORMAT_5 = "EEE, dd MMM yyyy, hh:mm a";
  static const String DATE_FORMAT_6 = "EEE, dd MMM yy";
  static const String DATE_FORMAT_7 = "EEE, dd MMM, hh:mm a";
  static const String DATE_FORMAT_8 = "EEE, dd MMM, yyyy";
  static const String DATE_FORMAT_9 = "MMM yyyy";
  static const String DATE_FORMAT_10 = "MM/dd/yy";
  static const String TIME_FORMAT_1 = "hh:mm a";
  static const String TIME_FORMAT_2 = "hh:mm:ss";
  static Map<String, RefreshCallback> fastRefreshCallbacks = <String, RefreshCallback>{};
  static Map<String, RefreshCallback> refreshCallbacks = <String, RefreshCallback>{};
  static Timer? _timer;
  // static double buttonWidth = 70.w;
  static const List<String> validImageExtensions = ['png', 'jpg', 'jpeg', 'webp'];
  static String currentDeviceId = '';


  static void init() async {
  }

  static int parseInt(dynamic value) {
    if (value == null) {
      Logger.m(tag: 'INTEGER PARSE ERROR', value: 'EMPTY VALUE');
      return 0;
    }

    if (value is int) {
      return value;
    }

    if (value is String) {
      try {
        if (value.contains('.')) {
          value = (value as String).split('.')[0];
        }
        return value != null && value.isNotEmpty ? int.parse(value) : 0;
      } catch (e) {
        Logger.m(tag: 'INTEGER PARSE ERROR (' + value + ")", value: e);
      }
    }

    if (value is double) {
      return value.toInt();
    }

    return 0;
  }

  static double parseDouble(dynamic value) {
    if (value == null) {
      return 0.0;
    }

    if (value is int) {
      return value.toDouble();
    }

    if (value is String) {
      try {
        if (!value.contains('.')) {
          value = (value as String) + '.0';
        }
        return value.isNotEmpty ? double.parse(value) : 0;
      } catch (e) {
        return 0.0;
      }
    }

    if (value is double) {
      return value;
    }

    return 0.0;
  }


  static bool isContainKeyword(String keyword, List<String?>? values) {
    if (!Helper.isEmpty(keyword) && values != null && values.length != 0) {
      for (int i = 0; i < values.length; i++) {
        if (!Helper.isEmpty(values[i]) && values[i]!.toLowerCase()!.contains(keyword.toLowerCase() as Pattern)) {
          return true;
        }
      }
    }
    return false;
  }

  static String checkNull(String value, {String defaultValue = ''}) {
    if (!isEmpty(value)) {
      return value;
    }
    return defaultValue??'';
  }

  static bool isEmpty(String? value) {
    return value == null || value == '' || value.isEmpty || value == 'null' || value.trim().isEmpty;
  }

  static bool isEmptyAny(List<String> values) {
    if (values == null) {
      return true;
    }

    for (int i = 0; i < values.length; i++) {
      if (isEmpty(values[i])) {
        return true;
      }
    }
    return false;
  }
  static Widget spaceVertical([double space = 5]) => SizedBox(width: 0, height: space);
  static Widget spaceHorizontal(double space) => Container(width: space, height: 0);

  // static String getTimeAgo(dynamic time) {
  //   if (time == null) {
  //     return '';
  //   }
  //
  //   try {
  //     Duration diff;
  //
  //     if (time.toString().isNotEmpty) {
  //       diff = DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(int.parse(time.toString())));
  //     } else {
  //       diff = DateTime.now().difference(DateTime.parse(time));
  //     }
  //
  //     if (diff.inDays > 365)
  //       return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
  //     if (diff.inDays > 30)
  //       return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
  //     if (diff.inDays > 7)
  //       return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
  //     if (diff.inDays > 0) return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
  //     if (diff.inHours > 0) return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
  //     if (diff.inMinutes > 0) return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
  //     return "Just now";
  //   } catch (e) {
  //     Logger.ex(tag: 'GET TIME AGO', value: e);
  //     return time;
  //   }
  // }


  static String getTimeAgo(String? time) {
    if (time == null || time.isEmpty) {
      return '';
    }

    try {
      DateTime parsedTime = DateTime.parse(time); // Parse the ISO 8601 date string
      Duration diff = DateTime.now().difference(parsedTime.toUtc());

      if (diff.inDays > 365) {
        return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
      }
      if (diff.inDays > 30) {
        return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
      }
      if (diff.inDays > 7) {
        return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
      }
      if (diff.inDays > 0) {
        return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
      }
      if (diff.inHours > 0) {
        return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
      }
      if (diff.inMinutes > 0) {
        return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
      }
      return "Just now";
    } catch (e) {
      print('Error parsing time: $e'); // Log the error
      return time; // Return the original time if parsing fails
    }
  }

  // static String getCurrentDate(String format) {
  //   final DateFormat formatter = DateFormat(format);
  //   return formatter.format(DateTime.now());
  // }


  static int convertToMillis(String dateTime) {
    try {
      return DateTime.parse(dateTime).millisecondsSinceEpoch;
    } catch (e) {
      Logger.e(tag: "DATE FORMAT : ", value: e.toString());
      return DateTime(1990).millisecondsSinceEpoch;
    }
  }
  // static String getEveryFirstDigit(String? name) {
  //   if (Helper.isEmpty(name)) {
  //     return '?';
  //   }
  //
  //   List<String> li = name??''.trim().split(' ');
  //
  //   String str = '';
  //
  //   if (li.length == 1 && li[0].length >= 2) {
  //     return li[0].substring(0, 2).toUpperCase();
  //   }
  //
  //   li.forEach((element) => str += element.substring(0, 1));
  //
  //   return str.toUpperCase();
  // }
  static int get currentMillis => DateTime.now().microsecondsSinceEpoch;
  static List<String> toList(String? s) {
    if (isEmpty(s)) {
      return <String>[];
    }

    List<String> li = s!.split(',');
    return li.where((element) => !isEmpty(element)).toList();
  }

  static formatNumber(String s, {bool withPlus = false,bool withBracket=false}) {
    if (s=='') {
      return '';
    }

    for (String c in [' ', '+', '-', '(', ')']) {
      s = s.replaceAll(c, '');
    }

    if(withBracket){
      return '+($s) ';
    }
    return (withPlus ? '+' : '') + s;
  }



  // static BoxDecoration dialogBoxDecoration([double radius = 20]) => BoxDecoration(
  //   color: Colors.white,
  //   borderRadius: BorderRadius.circular(radius),
  //   // boxShadow: [
  //   //   BoxShadow(
  //   //     color: Colors.grey.withOpacity(0.5),
  //   //     spreadRadius: 5,
  //   //     blurRadius: 7,
  //   //     offset: Offset(0, 3),
  //   //   )
  //   // ],
  // );


  // static void logOutWithoutAlert() {
  //   Preference.setLogin(false);
  //   Preference.clear();
  //   Get.back();
  //   Get.deleteAll();
  //   // Const.reset();
  //   // Helper.removeAutoRefreshCallback("BOOKING");
  //   Helper.refreshCallbacks.clear();
  //   Helper.fastRefreshCallbacks.clear();
  //   // Get.offAll(() => OnlySocialLoginScreen());
  //   Get.offAll(() => const LandingPage());
  // }
  // static String getFileNamePrefix(String pathType) {
  //   switch (pathType) {
  //     case FileUploadType.FILE:
  //       return 'FILE_';
  //     case FileUploadType.PROFILE_IMG:
  //       return 'PROFILE_';
  //     case FileUploadType.SMS_MEDIA:
  //       return 'SMS_IMG_';
  //   }
  //   return 'UNKNOWN_';
  // }
  //
  // static Future<File?> cropImageFile(String? path) async {
  //   CroppedFile? croppedFile = await ImageCropper().cropImage(
  //     sourcePath: path.nullSafe,
  //     maxWidth: 200,
  //     maxHeight: 200,
  //     aspectRatioPresets: [CropAspectRatioPreset.square],
  //     uiSettings: [
  //       AndroidUiSettings(
  //         toolbarTitle: 'Crop',
  //         toolbarColor: ThemeColors.primaryColor,
  //         toolbarWidgetColor: Colors.white,
  //         initAspectRatio: CropAspectRatioPreset.square,
  //         lockAspectRatio: true,
  //       ),
  //       IOSUiSettings(title: 'Crop', minimumAspectRatio: 1.0, aspectRatioLockEnabled: true)
  //
  //     ],);
  //
  //   return File(croppedFile!.path);
  // }

  //
  // static Future<bool> requestPermission(Permission p) async {
  //   var permission = await p.request();
  //
  //   if (permission != PermissionStatus.granted) {
  //     permission = await p.request();
  //   }
  //
  //   return permission == PermissionStatus.granted;
  // }



  //
  // static Future<bool> getStoragePermission() async {
  //   DeviceInfoPlugin plugin = DeviceInfoPlugin();
  //   if (Platform.isAndroid) {
  //     AndroidDeviceInfo android = await plugin.androidInfo;
  //     if (android.version.sdkInt! < 33) {
  //       if (await Permission.storage.request().isGranted) {
  //         return true;
  //       } else if (await Permission.storage.request().isPermanentlyDenied) {
  //         await openAppSettings();
  //       } else if (await Permission.audio.request().isDenied) {
  //         return false;
  //       }
  //     } else {
  //       if (await Permission.photos.request().isGranted) {
  //         return true;
  //       } else if (await Permission.photos.request().isPermanentlyDenied) {
  //         await openAppSettings();
  //       } else if (await Permission.photos.request().isDenied) {
  //         return false;
  //       }
  //     }
  //   } else if (Platform.isIOS) {
  //     // IosDeviceInfo iosInfo = await plugin.iosInfo;
  //     if (await Permission.storage.request().isGranted) {
  //       return true;
  //     } else if (await Permission.storage.request().isPermanentlyDenied) {
  //       await openAppSettings();
  //     } else if (await Permission.storage.request().isDenied) {
  //       return false;
  //     }
  //   }
  //   return false;
  // }


  //
  // static Future<bool> getStoragePermission2() async {
  //   DeviceInfoPlugin plugin = DeviceInfoPlugin();
  //   AndroidDeviceInfo android = await plugin.androidInfo;
  //   if (android.version.sdkInt! < 33) {
  //     if (await Permission.storage.request().isGranted) {
  //       return true;
  //     } else if (await Permission.storage.request().isPermanentlyDenied) {
  //       await openAppSettings();
  //     } else if (await Permission.audio.request().isDenied) {
  //       return false;
  //     }
  //   } else {
  //     if (await Permission.photos.request().isGranted) {
  //       return true;
  //     } else if (await Permission.photos.request().isPermanentlyDenied) {
  //       await openAppSettings();
  //     } else if (await Permission.photos.request().isDenied) {
  //       return false;
  //     }
  //   }
  //   return false;
  // }

  static DateTime utcTimeFormater(String? time){
    if( time!=null && time.isNotEmpty){
    return DateFormat(UTC_FORMATE).parse(time,true);
    }
    return DateFormat(UTC_FORMATE).parse(time??'',true);

  }

  static String dateFormate10(DateTime? dateTime ){
    if(dateTime!=null && dateTime!=''){
    return DateFormat(DATE_FORMAT_10).format(dateTime.toLocal());
    }
    return DateFormat(DATE_FORMAT_10).format(dateTime!.toLocal());
  }

  static String timeFormate1(DateTime? dateTime ){
    if(dateTime!=null && dateTime!=''){
      return DateFormat(TIME_FORMAT_1).format(dateTime.toLocal());
    }
    return DateFormat(TIME_FORMAT_1).format(dateTime!.toLocal());
  }


  static String getTimeTile(String time, {bool isUtc = false}) {
    if (time=='') {
      return '';
    }

    try {
      DateTime dateTime = DateTime.parse(time);
      DateTime onlyDate = DateTime(dateTime.year, dateTime.month, dateTime.day);
      Duration diff;

      diff = DateTime.timestamp().difference(dateTime);

      DateTime now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final yesterday = DateTime(now.year, now.month, now.day - 1);


      if (onlyDate == today) {
        return 'Today';
      }

      if (onlyDate == yesterday) {
        return 'Yesterday';
      }

      if (diff.inDays < 365) {
        return formatDate(dateTime, 'dd MMM');
      }

      return "${dateTime.year}";
    } catch (e) {
      Logger.ex(tag: 'GET TIME AGO', value: e.toString() + ' (' + time.toString() + ')');
      return '';
    }
  }

  static String formatDate(DateTime dateTime, String format) {
    final DateFormat formatter = DateFormat(format);
    return formatter.format(dateTime);
  }




  static String timeAgoSinceDate({required String createdTime, bool numericDates = true}) {
    DateTime date = DateTime.parse(createdTime).toLocal();
    final date2 = DateTime.now().toLocal();
    final difference = date2.difference(date);
    if (difference.inSeconds < 5) {
      return 'Just now';
    } else if (difference.inSeconds <= 60) {
      return '${difference.inSeconds} seconds ago';
    } else if (difference.inMinutes <= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inMinutes <= 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours <= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inHours <= 60) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays <= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inDays <= 6) {
      return '${difference.inDays} days ago';
    } else if ((difference.inDays / 7).ceil() <= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if ((difference.inDays / 7).ceil() <= 4) {
      return '${(difference.inDays / 7).ceil()} weeks ago';
    } else if ((difference.inDays / 30).ceil() <= 1) {
      return (numericDates) ? '1 month ago' : 'Last month';
    } else if ((difference.inDays / 30).ceil() <= 30) {
      return '${(difference.inDays / 30).ceil()} months ago';
    } else if ((difference.inDays / 365).ceil() <= 1) {
      return (numericDates) ? '1 year ago' : 'Last year';
    }
    return '${(difference.inDays / 365).floor()} years ago';
  }




  // static Future<void> redirectToAppOrStore() async {
  //   // Check if the target app is installed
  //   else {
  //     // Redirect to the Google Play Store to download the app
  //     final url = 'https://play.google.com/store/apps/details?id=com.brokeen.brokeen_driver';
  //     if (await canLaunch(url)) {
  //       await launch(url);
  //     } else {
  //       throw 'Could not launch $url';
  //     }
  //   }
  // }



  static void addRefreshCallback(String key, VoidCallback callback, {bool fastRefresh = false}) {
    if (fastRefresh) {
      if (!fastRefreshCallbacks.containsKey(key)) {
        fastRefreshCallbacks.putIfAbsent(key, () => callback);
      } else {
        Logger.m(tag: '!!!!!!!!!! Callback already exist !!!!!!!!!!', value: key);
      }
    } else {
      if (!refreshCallbacks.containsKey(key)) {
        refreshCallbacks.putIfAbsent(key, () => callback);
      } else {
        Logger.m(tag: '!!!!!!!!!! Callback already exist !!!!!!!!!!', value: key);
      }
    }
  }

  static void removeAutoRefreshCallback(String key) {
    if (fastRefreshCallbacks.containsKey(key)) fastRefreshCallbacks.remove(key);
    if (refreshCallbacks.containsKey(key)) refreshCallbacks.remove(key);
    Logger.m(tag: 'Removed From Refresh Callback', value: key);
  }


  static void initAutoRefreshTimer({int delayInSeconds = 4}) {
    if (_timer != null) {
      _timer?.cancel();
    }

    _timer = Timer.periodic(Duration(seconds: delayInSeconds), (timer) {
      if (Const.lifecycleState == AppLifecycleState.resumed) {
        // int sleep = (delayInSeconds * 1000) ~/ fastRefreshCallbacks.length;
        int sleep = 400;

        // Logger.m(tag: "TIME STATUS CHECK : " + Helper.currentMillis.toString());

        fastRefreshCallbacks.forEach((key, value) async {
          value.call();
          await Future.delayed(Duration(milliseconds: sleep));
          //Logger.m(tag: "TIME STATUS CHECK REC : " + Helper.currentMillis.toString());
        });

        if (timer.tick.isOdd) {
          refreshCallbacks.forEach((key, value) async {
            value.call();
            await Future.delayed(Duration(milliseconds: sleep));
          });
        }
      }
    });
  }



  static double haversineDistance(double lat1, double lon1, double lat2, double lon2){
    const R = 6371.0; // Radius of the Earth in kilometers

    // Convert latitude and longitude from degrees to radians
    var lat1Rad = degreesToRadians(lat1);
    var lon1Rad = degreesToRadians(lon1);
    var lat2Rad = degreesToRadians(lat2);
    var lon2Rad = degreesToRadians(lon2);

    // Haversine formula
    var dLon = lon2Rad - lon1Rad;
    var dLat = lat2Rad - lat1Rad;
    var a = pow(sin(dLat / 2), 2) +
        cos(lat1Rad) * cos(lat2Rad) * pow(sin(dLon / 2), 2);
    var c = 2 * atan2(sqrt(a), sqrt(1 - a));

    // Calculate the distance
    var distance = R * c;

    return distance;
  }

  static double degreesToRadians(double degrees) {
    return degrees * pi / 180.0;
  }
// static String currentDate(){
  //   final f = new DateFormat('MMMM d,yyyy');
  //   return f.format( new DateTime.now());
  // }
  //
  // static String ufcTime(String utcTime){
  //   DateTime dateTime = DateTime.parse(utcTime).toLocal(); // Convert to local time
  //   String formattedDate = DateFormat('MMMM d,yyyy').format(dateTime);
  //   return formattedDate;
  // }
  // static void logOut() {
  //   MyAlertDialog()
  //       .setButtonAlignment(Alignment.bottomCenter)
  //       .setTitleAlignment(Alignment.bottomCenter)
  //       .setMessageAlignment(Alignment.bottomCenter)
  //       .setFirstSpacing(30)
  //       .setSecondSpacing(15)
  //       .setTitle(Strings.get('logout') + '?')
  //       .setMessage(Strings.get('youWantToLogOut'))
  //       .setPositiveButton('yes'.t, () {
  //     logOutWithoutAlert();
  //   })
  //       .setNegativeButton('no'.t, null)
  //       .show();
  // }
}