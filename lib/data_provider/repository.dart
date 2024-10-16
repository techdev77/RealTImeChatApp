import 'dart:async';
import 'dart:io';
import 'package:chat_app/data/prefrences.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' as getx;
import '../data/const.dart';

import '../models/result.dart';
import 'api_provider.dart';

class Repository extends ApiProvider {
  static Repository? _instance;

  static Repository get instance {
    _instance ??= Repository._init();
    return _instance!;
  }

  Repository._init();

  void onFlutterError(FlutterErrorDetails flutterErrorDetails) {
    String information = '';

    reportError(
      tag: flutterErrorDetails.toStringShort(),
      value: flutterErrorDetails.exceptionAsString(),
      context: flutterErrorDetails.context?.value?.toString() ?? '',
      stack: flutterErrorDetails.stack.toString(),
      information: information,
    );
  }

  void reportError({
    required String tag,
    required String value,
    String context = '',
    String stack = '',
    String information = '',
  }) {
    if (!kDebugMode) {
      Map<String, dynamic> error = {
        'tag': tag,
        'value': value,
        'context': context,
        // 'userEmail': Preference.isLogin ? Preference.user.email.nullSafe : '',
        'stack': stack,
        'information': information,
      };
      super.getDynamic('reportError', parameters: error);
    }
  }

  Future<dynamic> login(String? email,String? password) {
    return super.getDynamic('login', parameters: {'email': email,'password':password});
  }


  Future<Result> register(String? email,String? password,String? contact,String name) {
    return super.getResult('register', parameters: {'email': email,'password':password,'contact': contact,'name':name});
  }

Future<List<dynamic>> getUsersWithLastChat({String? uid}) {
  return super.getList('getUsersWithLastChat',parameters: {'user_id':Preference.user.id});
}
Future<List<dynamic>> getChat({String? uid}) {
  return super.getList('getChat',parameters: {'userId':uid,'loggedInUserId':Preference.user.id.toString()});
}


  Future<Result> sendMessage(
      {String? chatId, String? senderId, String? receiverId, String? message}) {
    return super.getResult('sendMessage', parameters: {'chat_id': chatId,'sender_id':senderId,'receiver_id': receiverId,'message':message});
  }

  // Future<Result> generateOtp(String? phoneNumber) {
  //   return super.getResult('sendVerificationOtp', parameters: {'to': phoneNumber});
  // }
  // Future<Result> verifyOtp(String? sentTo,String? otp) {
  //   return super.getResult('verifyOtp', parameters: {'sentTo': sentTo,'otp':otp});
  // }
  //
  // Future<Result> uploadFile(File file, String pathType) async {
  //   String ext = file.path.split('.').last;
  //   String fileName = '${Helper.getFileNamePrefix(pathType)}${DateTime.now().millisecondsSinceEpoch}.$ext';
  //
  //   Map<String, dynamic> parameters = {
  //     "pathType": pathType,
  //     "file": await MultipartFile.fromFile(file.path, filename: fileName)
  //   };
  //
  //   return super.getResult('uploadFile', parameters: parameters);
  // }
  //
  // Future<dynamic> setProfile(String? firstname,String? lastName,String? email,String? contact,String? oEmail,String? phoneCode,String? country,String? profilePic,String? referCode,String? countryCode) {
  //   return super.getDynamic('register', parameters: {'first_name': firstname,'last_name':lastName,'email':email,'contact':contact,'tav_email':oEmail,'phone_code':phoneCode,'country':country,'profile_pic':profilePic,'work_area':'','registration_type':'','user_type':'CLIENT','referral_from':referCode,'country_code':countryCode});
  // }
  // Future<Result> setPassword(String? contact,String? password) {
  //   return super.getResult('setPassword', parameters: {'to': contact,'password':password});
  // }
  // Future<Result> changePassword(String? oldPassword,String? newPassword) {
  //   return super.getResult('changePassword', parameters: {'oldPassword': oldPassword,'newPassword':newPassword});
  // }
  //
  // Future<Result> updateProfile(User user) {
  //   return super.getResult('editProfile', parameters: user.toJson());
  // }
  //
  // Future<bool> getConfig() async {
  //   var data = await getDynamic('config');
  //   if (data['success'] == true) {
  //     Const.config.value = Config.fromJson(data);
  //     Encryption.setNull();
  //     // if (Helper.isTester) {
  //     //   Toasty.normal('Developer Mode Active');
  //     // }
  //   }
  //   return true;
  // }
  //
  // Future<Result> updateProfilePic(String? profilePic) {
  //   return super.getResult('updateProfilePic', parameters: {'profile_pic': profilePic});
  // }
  //
  // Future<List<dynamic>> getWalletHistory({bool isAll = false}) {
  //   return super.getList('getWalletHistory',parameters: {
  //     'all':isAll
  //   });
  // }
  //
  // Future<dynamic> getCurrentWalletBalance() {
  //   return super.getDynamic('getCurrentWalletBalance');
  // }
  //
  // Future<Result> addWalletAmount({required String amount,required String? currencyCode,String? paymentMethod,String? paymentId}) {
  //   return super.getResult('recharge',parameters: {
  //     'method':"CARD","amount":amount,"currency_code":"FCFA","payment_id":paymentId
  //   });
  // }
  //
  // Future<List<dynamic>> getAccessibilitySetting({String? uid}) {
  //   return super.getList('getAccessibilitySetting',parameters: {'uid':uid});
  // }
  //
  // Future<Result> saveAccessibilitySetting({String? ids,}) {
  //   return super.getResult('saveAccessibilitySetting',parameters: {
  //     'ids':ids,
  //   });
  // }
  // Future<List<dynamic>> getFavoritePlacesCategories() {
  //   return super.getList('getFavoritePlacesCategories');
  // }
  // Future<Result> saveFavoritePlace({String? id,String? address,String? latitude,String? longitude,String? title}) {
  //   return super.getResult('saveFavoritePlace',parameters: {
  //     'category_id':id,'address':address,'latitude':latitude,'longitude':longitude,'title':title
  //   });
  // }
  //
  // Future<List<dynamic>> getFavoritePlaces({String? categoryId}) {
  //   return super.getList('getFavoritePlaces',parameters: {
  //     'category_id':categoryId
  //   });
  // }
  // Future<Result> sendChatMessage({String? to,String? message,String? media}) {
  //   return super.getResult('sendChatMessage',parameters: {
  //     'toUid':to,'message':message,'media':media
  //   });
  // }
  //
  // Future<List<dynamic>> getChat(String? to) {
  //   return super.getList('getChat',parameters: {
  //     'toUid':to
  //   });
  // }
  //
  // Future<List<dynamic>> getServiceCategories() {
  //   return super.getList('getServiceCategories');
  // }
  //
  // Future<List<dynamic>> getServices(String? categoriesId) {
  //   return super.getList('getServices',parameters: {
  //     'category_id':categoriesId,'latitude':_homeController.lat,'longitude':_homeController.long
  //   });
  // }
  //
  // Future<dynamic> getDriverDetails(String? id) {
  //   return super.getDynamic('getDriverDetails',parameters: {
  //     'id':id
  //   });
  // }
  //
  // Future<List<dynamic>> vehicleCategories() {
  //   return super.getList('vehicleCategories');
  // }
  // Future<Result> book({String? driverIds,String? vechicleCatId,String? originLatitude,String? originLongitude,String? destinationLatitude,String? destinationLongitude,String? origin_address,String? destination_address,String? estimated_time,String? estimated_distance,double? totalAmount,double? paidAmount,String? estimatedDistanceValue,String? estimatedTimeValue}) {
  //   return super.getResult('book',parameters: {
  //     'driverIds':driverIds,
  // "vehicle_cat_id":vechicleCatId,"origin_address":origin_address,
  //     "destination_address":destination_address,"estimated_time":estimated_time,"estimated_distance":estimated_distance,
  //     "payment_method":"","payment_id":"","total_amount":totalAmount,"paid_amount":paidAmount,"estimated_distance_value":estimatedDistanceValue,"estimated_time_value":estimatedTimeValue,
  //     "origin_latitude":originLatitude,"origin_longitude":originLongitude,"destination_latitude":destinationLatitude,"destination_longitude":destinationLongitude
  //   });
  // }
  //
  // Future<List<dynamic>> myBookings() {
  //   return super.getList('myBookings');
  // }
  // Future<dynamic> getLastBookingOfClient() {
  //   return super.getDynamic('getLastBookingOfClient');
  // }
  //
  //
  // Future<Result> completeBookingBuCustomer({required String? bookingId,required double rating,required String? review,required String paymentMethod,required int paymentId,required double repayAmount }) {
  //   return super.getResult('completeBookingBuCustomer',parameters: {
  //     "bookingId":bookingId,"rating":rating,"review":review,"paymentMethod":paymentMethod,"paymentId":paymentId,"repayAmount":repayAmount
  //   });
  // }
  // Future<Result> cancelRaceByClient({required String? bookingId,required String? cancellationReason}) {
  //   return super.getResult('cancelRaceByClient',parameters: {
  //     "bookingId":bookingId,"cancellationReason":cancellationReason
  //   });
  // }
  //
  // Future<dynamic> cancellationReason() {
  //   return super.getDynamic('cancellationReason',parameters: {
  //     "type":"CUSTOMER"
  //   });
  // }
  //
  // Future<Result> saveSnapshot(int? bookingId, String snapShot) => super.getResult('saveSnapshot', parameters: {'bookingId': bookingId, 'snapShot': snapShot});
  // Future<Result> updateCredentials({String? fcmToken,String? coordinates=""}) => super.getResult('updateCredentials', parameters: {'fcmToken': fcmToken,
  //   'coordinates':coordinates
  // });
  // Future<Result> checkLocationValidity({required String? country,required String? locality,required String? adminArea,required String? zipCode,}) =>
  //     super.getResult('checkLocationValidity', parameters: {'country': country,'locality':locality,"adminArea":adminArea,"zipCode":zipCode});
  //
  // Future<List<dynamic>> africanCountries() {
  //   return super.getList('africanCountries');
  // }
  //
  // Future<Result> withdraw({required String? method,required String? amount,required String? currency_code,required String? country,required String? phone_code,required String? phone_number,}) {
  //   return super.getResult('withdraw',parameters: {
  //     "method":method,"amount":amount,"currency_code":currency_code,"country":country,"phone_code":phone_code,"phone_number":phone_number,"card_number":"","card_cvv":"",
  //     "card_expiry_month":"","card_expiry_year":""
  //   });
  // }
  // Future<dynamic> getPaymentEstimation({String? bookingId}) {
  //   return super.getDynamic('getPaymentEstimation',parameters: {
  //    "booking_id":bookingId
  //   });
  // }
  //
  // Future<Result> payByWallet({required String? bookingId,required String? amount}) {
  //   return super.getResult('payByWallet',parameters: {
  //     "booking_id":bookingId,"amount":amount
  //   });
  // }
  //
  // Future<Result> checkPaymentStatus({required String? referanceid }) {
  //   return super.getResult('checkPaymentStatus',parameters: {
  //     "id":referanceid
  //   });
  // }
  //
  // Future<Result> giveRatingToDriver({required String? bookingId,required String? driverId,String? rating,String? review }) {
  //   return super.getResult('giveRatingToDriver',parameters: {
  //     "bookingId":bookingId,"driverId":driverId,'rating':rating,'review':review
  //   });
  // }
  //
  //
  // Future<Result> markRegistrationComplete(String contact) =>
  //     super.getResult('markRegistrationComplete', parameters: {'contact': contact});
  //
  // Future<List<dynamic>> getWalletOfferTickets() {
  //   return super.getList('getWalletOfferTickets');
  // }
  //
  // Future<List<dynamic>> myPaymentMethods() {
  //   return super.getList('myPaymentMethods');
  // }
  //
  //
  // Future<Result> addPaymentMethods({required String? action,String id='',String paymentMethod='',String phoneNumber='',String phoneCode=''}) {
  //   return super.getResult('addPaymentMethods',parameters: {
  //     "action":action,"id":id,"payment_method":paymentMethod,"phone_number":phoneNumber,"phone_code":phoneCode
  //   });
  // }
  //
  //
  // Future<Result> saveRecentlyVisitedLocation({required String? title,required String location,required double latitude,required double longitude}) {
  //   return super.getResult('saveRecentlyVisitedLocation',parameters: {
  //     "title":title,"location":location,"latitude":latitude,"longitude":longitude
  //   });
  // }
  //
  // Future<List<dynamic>> getRecentallyVisitedLocations() {
  //   return super.getList('getRecentlyVisitedLocations');
  // }
}
