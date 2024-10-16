import 'dart:io';

import 'package:chat_app/data_provider/repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' as getx;

import '../data/helper.dart';
import '../data/logger.dart';
import '../data/prefrences.dart';
import '../models/result.dart';
import 'api_key.dart';

class ApiProvider {
  static late Dio _dio;

  ApiProvider() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiKeys.baseUrl,
        connectTimeout: Duration(seconds: 30),
        receiveTimeout:  Duration(seconds: 30),
        sendTimeout:  Duration(seconds: 30),
        // responseType: ResponseType.json,
        // contentType: 'application/json',
        followRedirects: false,
        validateStatus: (status) => true,
      ),
    );

    // print(ApiKeys.baseUrl);

    // // if (!ApiKeys.baseUrl.startsWith('https')) {
    //   (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
    //     client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    //     return client;
    //   };
    // // }
  }

  Future<Options> get _options async {
    return Options(headers: {
      // 'authorization': Preference.isUserAvailable ? Preference.user.authToken : "",
      // 'tmz': Preference.isUserAvailable ? Preference.user.timeZone : 'UTC',
      // 'pn': Const.packageName,
      // 'vc': Const.versionCode,
      // 'vn': Const.versionName,
      // 'X-localization' : Preference.language,
      // 'User-Type': "CLIENT",
      // 'App-Mode': kDebugMode ? 'DEBUG' : (kProfileMode ? 'PROFILE' : 'RELEASE'),
      // 'ot': kIsWeb ? 'web' : Platform.operatingSystem /*+ " (${Platform.operatingSystemVersion})"*/,
      // 'enc': Encryption.privateEncAvailable ? '1' : '0',
    });
  }

  Future<List<dynamic>> getList(
      String endPoint, {
        bool enableParamsLogs = true,
        bool enableResponseLogs = true,
        Map<String, dynamic>? parameters = const {},
        bool reportError = true,
      }) async {
    if (enableParamsLogs) Logger.m(tag: 'API $endPoint Params', value: parameters);
    if (enableParamsLogs) Logger.m(tag: 'API $endPoint Headers', value: (await _options).headers);

    // if (parameters != null && parameters.isNotEmpty && Encryption.publicEncAvailable) {
    //   parameters = Encryption.instance.encMap(parameters);
    // }

    return _dio.post(endPoint, data: FormData.fromMap(parameters ?? {}), options: await _options).then((value) {
      if (enableResponseLogs) Logger.r(tag: 'Api $endPoint', value: value);
      if (_isResponseValid(response: value, endPoint: endPoint, reportError: reportError)) {
        if (value.data['success'] == true) {
          return value.data['data'] as List;
        }
      }
      return [];
    }).catchError((e) {
      Logger.e(baseName: runtimeType, tag: 'API $endPoint Params', value: e);
      if (reportError) reportDioError(endPoint, e);
      return [];
    });
  }

  Future<Result> getResult(
      String endPoint, {
        bool enableParamsLogs = true,
        bool enableResponseLogs = true,
        Map<String, dynamic>? parameters = const {},
        bool reportError = true,
      }) async {
    if (enableParamsLogs) Logger.m(tag: 'API $endPoint Params', value: parameters);
    if (enableParamsLogs) Logger.m(tag: 'API $endPoint Headers', value: (await _options).headers);
    //
    // if (parameters != null && parameters.isNotEmpty && Encryption.publicEncAvailable) {
    //   parameters = Encryption.instance.encMap(parameters);
    // }

    return _dio.post(endPoint, data: FormData.fromMap(parameters ?? {}), options: await _options).then((value) {
      if (enableResponseLogs) Logger.r(tag: 'Api $endPoint', value: value);
      if (_isResponseValid(response: value, endPoint: endPoint, reportError: reportError)) {
        return Result.fromJson(value.data);
      }
      return Result(message: 'somethingWentWrong'.tr);
    }).catchError((e) {
      Logger.e(baseName: runtimeType, tag: 'API $endPoint Params', value: e);
      if (reportError) reportDioError(endPoint, e);
      return Result(message: 'somethingWentWrong'.tr);
    });
  }

  Future<dynamic> getDynamic(
      String endPoint, {
        bool enableParamsLogs = true,
        bool enableResponseLogs = true,
        Map<String, dynamic>? parameters = const {},
        bool reportError = true,
      }) async {
    print("ghjkl");
    /*if (enableParamsLogs)*/ Logger.m(tag: 'API $endPoint Params', value: parameters);
   /* if (enableParamsLogs)*/ Logger.m(tag: 'API $endPoint Headers', value: (await _options).headers);

    // if (parameters != null && parameters.isNotEmpty && Encryption.publicEncAvailable) {
    //   parameters = Encryption.instance.encMap(parameters);
    // }


    return _dio.post(endPoint, data: FormData.fromMap(parameters ?? {}), options: await _options).then((value) {
      if (enableResponseLogs) Logger.r(tag: 'Api $endPoint', value: value);
      if (_isResponseValid(response: value, endPoint: endPoint, reportError: reportError)) {
        return value.data;
      }
      return {'success': false};
    }).catchError((e) {
      Logger.e(tag: 'API $endPoint Params', value: e);
      if (reportError) reportDioError(endPoint, e);
      return {'success': false};
    });
  }

  Future<int> getInt(
      String endPoint, {
        bool enableParamsLogs = true,
        bool enableResponseLogs = true,
        Map<String, dynamic>? parameters = const {},
        bool reportError = true,
      }) async {
    if (enableParamsLogs) Logger.m(tag: 'API $endPoint Params', value: parameters);
    if (enableParamsLogs) Logger.m(tag: 'API $endPoint Headers', value: (await _options).headers);
    //
    // if (parameters != null && parameters.isNotEmpty && Encryption.publicEncAvailable) {
    //   parameters = Encryption.instance.encMap(parameters);
    // }

    return _dio.post(endPoint, data: FormData.fromMap(parameters ?? {}), options: await _options).then((value) {
      if (enableResponseLogs) Logger.r(tag: 'Api $endPoint', value: value);
      if (_isResponseValid(response: value, endPoint: endPoint, reportError: reportError)) {
        return Helper.parseInt(value.data);
      }
      return 0;
    }).catchError((e) {
      Logger.e(tag: 'API $endPoint Params', value: e);
      if (reportError) reportDioError(endPoint, e);
      return 0;
    });
  }

  Future<List<int>?> hitUrl(String url) async {
    return _dio
        .get<List<int>>(url, options: Options(responseType: ResponseType.bytes))
        .then((value) => value.data)
        .catchError((e) => <int>[]);
  }

  void reportDioError(String endPoint, dynamic e) {
    if (e!=null) {
      Repository.instance
          .reportError(tag: endPoint, value: e.message.nullSafe, context: 'Api Provider', stack: e.stackTrace.toString());
    } else {
      Repository.instance.reportError(tag: endPoint, value: e.toString(), context: 'Api Provider');
    }
  }
}

bool _isResponseValid({required Response response, required String endPoint, bool reportError = true}) {
  if ([200, 201, 202].contains(response.statusCode)) {
    return true;
  }

  if (response.statusCode == 401) {
    Logger.e(
        tag: "$endPoint => !!!!!! STATUS MESSAGE !!!!!!",
        value: '${response.statusCode} :: ${response.statusMessage ?? ''}');
    if (Preference.isLogin) {
      // Helper.logOutWithoutAlert();
    }
  }

  if (reportError) {
    Repository.instance.reportError(
      tag: 'Api $endPoint Error',
      value: '[${response.statusCode.toString()}] ${response.statusMessage ?? ''}',
      context: endPoint,
      stack: response.data.toString(),
    );
  }

  return false;
}
