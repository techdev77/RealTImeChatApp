
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'prefrences.dart';


class Const {
  // ignore: constant_identifier_names
  // static const EMAIL_VERIFICATION_LINK = ApiKeys.baseUrl + "57fe55ac900525062fd0760984d0578b?s=";

  static final RxInt notificationCount = 0.obs;
  static const razorPayKey = 'rzp_test_lOilWsb6wjCV3t';
  static AppLifecycleState lifecycleState = AppLifecycleState.resumed;
   static RxBool isOnline = false.obs;
  static RxString name = ''.obs;
  static RxString email = ''.obs;
  static RxString bookingPaymentStatus = Status.NORMAL.obs;
  static RxString profilePic = ''.obs;
  static bool isDeveloper = kDebugMode;
  static double loaderSize = 80;
  // static String referralCode="1.Download the BrokeenClient App from here: https://play.google.com/store/apps/details?id=com.brokeen.client. \n2.Use my refer code  ${Preference.user.myReferCode.nullSafe} and get 500Fcfa bonus amount on your first ride.";
  static double contestGroupHeight = 120;

  static String currencySymbol = '₹';
  static String currencyCode = 'INR';
  static List<int> templateAmounts = [20, 30, 40, 50, 60, 70];

  static String packageName = '';
  static String versionCode = '0';
  static String versionName = '0';
  // static final Rx<Config> config = Config().obs;
  static String dots = '• • •';

  static const alphabets = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'];
}

class Status {
  // ignore: constant_identifier_names
  static const NORMAL = 'normal';

  // ignore: constant_identifier_names
  static const PROGRESS = 'progress';

  // ignore: constant_identifier_names
  static const EMPTY = 'empty';

  // ignore: constant_identifier_names
  static const ERROR = 'error';

  // ignore: constant_identifier_names
  static const COMPLETED = 'completed';
}

