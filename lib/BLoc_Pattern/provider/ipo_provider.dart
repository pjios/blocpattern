
import 'package:dio/dio.dart';
import '../model/IPODetails_Model.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'https://dfsmobiletest.jmfonline.in/api/Clientapp/GetIPODetails';

  Future<IpoDeatilsDemo> fetchIPOList() async {
    _dio.options.contentType = Headers.formUrlEncodedContentType;
    _dio.options.headers['Authorization'] = 'basic 3A596F52-A7C2-4C1B-BB89-9CF12DC4F995-20210927124524187';
    Response response = await _dio.post('https://dfsmobiletest.jmfonline.in/api/Clientapp/GetIPODetails',  data:
    {
      'IMEI': 'cZtBXvGIQS0JB1o1MqH69TMr4vIOrQuiuzwOv28hmokG/F1naGlJphgbpyZenPMt',
      'ClientID': 'ZmmqCPiQKKccUQUDELHC5g==',
      'TokenID': 'ZergohGCQ/vymyg4GbCMSQ=='
    },
    );
    if (response.statusCode == 200) {
      print(response.data);
      return IpoDeatilsDemo.fromJson(response.data);

    }else {
      print(response.statusMessage);
      throw Exception(response.statusMessage);
    }
  }


}