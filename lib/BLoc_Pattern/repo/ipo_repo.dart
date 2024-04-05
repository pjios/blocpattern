
import 'dart:convert';

// import 'package:dio/dio.dart';
import 'package:http/http.dart';
import '../model/IPODetails_Model.dart';

/*
class IPODetailsRepository {
  String userUrl = 'https://dfsmobiletest.jmfonline.in/api/Clientapp/GetIPODetails';
  final Dio _dio = Dio();

  Future<List<IpoDeatilsDemo>> fetchIPOList() async {
  //  Response response = await po(Uri.parse(userUrl));
    _dio.options.contentType = Headers.formUrlEncodedContentType;
    _dio.options.headers['Authorization'] = 'basic 3A596F52-A7C2-4C1B-BB89-9CF12DC4F995-20210927124524187';
    Response response = await _dio.post(userUrl,  data:
    {
      'IMEI': 'cZtBXvGIQS0JB1o1MqH69TMr4vIOrQuiuzwOv28hmokG/F1naGlJphgbpyZenPMt',
      'ClientID': 'ZmmqCPiQKKccUQUDELHC5g==',
      'TokenID': 'ZergohGCQ/vymyg4GbCMSQ=='
    },
    );

    if (response.statusCode == 200) {
      final List<IpoDeatilsDemo> result = jsonDecode(response.data)['data'];
      print(result);
      return result.map((e) => IpoDeatilsDemo.fromJson(e)).toList();
    } else {
      throw Exception(response.statusMessage);
    }

  }
}
*/

class IPODetailsRepository {
  String userUrl = 'https://dfsmobiletest.jmfonline.in/api/Clientapp/GetIPODetails';
  Map<String, String> bodyParam = {
    'IMEI': 'cZtBXvGIQS0JB1o1MqH69TMr4vIOrQuiuzwOv28hmokG/F1naGlJphgbpyZenPMt',
    'ClientID': 'ZmmqCPiQKKccUQUDELHC5g==',
    'TokenID': 'ZergohGCQ/vymyg4GbCMSQ==',
  };

  // final Dio _dio = Dio();
  //
  // Future<List<IpoDeatilsDemo>> fetchIPOList() async {
  //   //  Response response = await po(Uri.parse(userUrl));
  //   _dio.options.contentType = Headers.formUrlEncodedContentType;
  //   _dio.options.headers['Authorization'] = 'basic 3A596F52-A7C2-4C1B-BB89-9CF12DC4F995-20210927124524187';
  //   Response response = await _dio.post(userUrl,  data:
  //   {
  //     'IMEI': 'cZtBXvGIQS0JB1o1MqH69TMr4vIOrQuiuzwOv28hmokG/F1naGlJphgbpyZenPMt',
  //     'ClientID': 'ZmmqCPiQKKccUQUDELHC5g==',
  //     'TokenID': 'ZergohGCQ/vymyg4GbCMSQ=='
  //   },
  //   );

    // if (response.statusCode == 200) {
    //   final List<IpoDeatilsDemo> result = jsonDecode(response.data)['data'];
    //   print(result);
    //   return result.map((e) => IpoDeatilsDemo().fromJson(e)).toList();
    // } else {
    //   throw Exception(response.statusMessage);
    // }
  Future<List<IpoDeatilsDemo>> fetchIPOList() async {

  Response response = await post(Uri.parse(userUrl), headers: {"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"},
  body: bodyParam);

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data']['ActiveIPO'];
      return result.map((e) => IpoDeatilsDemo.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}